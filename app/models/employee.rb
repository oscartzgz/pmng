class Employee < ApplicationRecord
  belongs_to :phone_device, required: false
  belongs_to :computer_equipment, required: false
  belongs_to :accessory, required: false
  belongs_to :printer, required: false
  validates :name, :job, presence: true
end
