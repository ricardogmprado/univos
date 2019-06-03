class Activity < ApplicationRecord
  has_many :appointments
  belongs_to :user
  has_many :users, through: :appointments
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :meeting_point, presence: true
  validates :number_of_people, presence: true
  validates :category, presence: true
end
