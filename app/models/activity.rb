class Activity < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments
  has_many :messages, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 60}
  validates :date, presence: true
  validates :meeting_point, presence: true
  validates :number_of_people, presence: true
  validates :category, presence: true

  mount_uploader :photo, PhotoUploader

  after_create :appointment_for_activity_creator

  geocoded_by :meeting_point
  after_validation :geocode, if: :will_save_change_to_meeting_point?

  def appointment_for_activity_creator
    Appointment.create(user: self.user, activity: self, status: 'confirmed')
  end

end
