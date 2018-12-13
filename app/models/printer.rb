class Printer < ApplicationRecord
  belongs_to :consumable
  validates :brand, :model, presence: true
end
