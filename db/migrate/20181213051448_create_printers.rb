class CreatePrinters < ActiveRecord::Migration[5.2]
  def change
    create_table :printers do |t|
      t.string :brand
      t.string :model
      t.string :sku
      t.float :value
      t.string :status
      t.string :observations
      t.string :assignment
      t.string :quantity
      t.references :consumable, foreign_key: true

      t.timestamps
    end
  end
end
