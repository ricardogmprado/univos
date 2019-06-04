class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  has_many :activities, through: :appointments
  has_many :messages
  validates :name, presence: true
  validates :location, presence: true
  validates :gender, presence: true
  validates :age, presence: true
end
