class Activity < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :meeting_point, presence: true
  validates :number_of_people, presence: true
  validates :category, presence: true
  after_create :appointment_for_activity_creator

  def appointment_for_activity_creator
    Appointment.create(user: self.user, activity: self, status: 'confirmed')
  end
end
