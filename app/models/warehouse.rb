class Warehouse < ApplicationRecord
  belongs_to :accessory
  belongs_to :compute_equipement
  belongs_to :printer
  belongs_to :consumable
  validates :quantity, presence: true
end
