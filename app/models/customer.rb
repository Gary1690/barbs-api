class Customer < ApplicationRecord
  has_many :appointments
  has_many :medications
end
