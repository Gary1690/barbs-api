class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  attribute :status, :boolean, default: false
end
