class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :therapist
  belongs_to :apptime
end
