class User < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :therapists, through: :appointments
    has_many :journals, dependent: :destroy
    has_many :goals, dependent: :destroy

    has_secure_password
end
