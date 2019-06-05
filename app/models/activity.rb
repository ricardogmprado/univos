class Activity < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments
  has_many :messages, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :meeting_point, presence: true
  validates :number_of_people, presence: true
  validates :category, presence: true
<<<<<<< HEAD
  mount_uploader :photo, PhotoUploader
=======
  after_create :appointment_for_activity_creator

  def appointment_for_activity_creator
    Appointment.create(user: self.user, activity: self, status: 'confirmed')
  end
>>>>>>> 7dec6517e666b26f0296b2ff34f8eaaa73b2e22f
end
