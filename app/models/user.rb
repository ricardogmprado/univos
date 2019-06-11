class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments, dependent: :destroy
  has_many :activities, dependent: :destroy #activities that the user created
  has_many :messages, dependent: :destroy
  validates :name, presence: true, on: :update
  validates :location, presence: true, on: :update
  validates :gender, presence: true, on: :update
  validates :age, presence: true, on: :update
  mount_uploader :photo, UserPhotoUploader
  devise :omniauthable, omniauth_providers: [:facebook]
  before_save :set_full_name

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice("provider", "uid")
    user_params.merge! auth.info.slice("email", "first_name", "last_name")
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

  def set_full_name
    if self.first_name !=  nil
      self.name = self.first_name + ' ' + self.last_name
    end
  end
end
