class User < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :therapists, through: :appointments
    has_many :journals, dependent: :destroy
    has_many :goals, -> {order ("goal_status DESC")}, dependent: :destroy

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    has_secure_password
end
