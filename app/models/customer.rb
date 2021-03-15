class Customer < ApplicationRecord
  has_many :appointments
  has_many :medications
  has_many :allergies
  has_many :interventions
end
