class User < ApplicationRecord
  has_many :appointments
  has_many :activities, through: :appointments
  has_many :messages
  validates :name, presence: true
  validates :location, presence: true
  validates :gender, presence: true
  validates :age, presence: true
end
