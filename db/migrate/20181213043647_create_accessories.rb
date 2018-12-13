class CreateAccessories < ActiveRecord::Migration[5.2]
  def change
    create_table :accessories do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :sku
      t.float :value
      t.string :status
      t.string :observations
      t.string :assignment
      t.integer :quantity

      t.timestamps
    end
  end
end
