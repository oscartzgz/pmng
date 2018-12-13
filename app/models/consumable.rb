class Consumable < ApplicationRecord
  validates :brand, :type, presence: true
end
