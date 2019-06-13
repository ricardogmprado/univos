class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :user, uniqueness: { scope: :activity }

end
