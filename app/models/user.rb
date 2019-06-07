class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments, dependent: :destroy
  has_many :activities, dependent: :destroy #activities that the user created
  has_many :messages
  validates :name, presence: true
  validates :location, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  mount_uploader :photo, UserPhotoUploader
end
