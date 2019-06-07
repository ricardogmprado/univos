class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  has_many :activities #activities that the user created
  has_many :messages
  validates :name, presence: true, on: :update
  validates :location, presence: true, on: :update
  validates :gender, presence: true, on: :update
  validates :age, presence: true, on: :update
  mount_uploader :photo, UserPhotoUploader
  devise :omniauthable, omniauth_providers: [:facebook]

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
      user = User.create(name: auth.extra.raw_info.first_name + '' + auth.extra.raw_info.last_name,
                           provider:auth.provider,
                           uid:auth.uid,
                           email:auth.info.email,
                           password:Devise.friendly_token[0,20],
                           photo: auth.info.image
                           )
    end
    user
  end
end
