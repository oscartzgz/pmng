class PhoneDevice < ApplicationRecord
  belongs_to :phone_line
  validates :brand, :IMEI, presence: true
  validates :phone_line_id, uniqueness: true, allow_nil: true
end
