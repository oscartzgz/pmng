class PhoneLine < ApplicationRecord
  has_one :phone_device
  validates :number, :SIM_key, presence: true
  validates :number, :SIM_key, uniqueness: true
end
