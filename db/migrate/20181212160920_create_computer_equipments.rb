class CreateComputerEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :computer_equipments do |t|
      t.string :brand
      t.string :model
      t.string :sku
      t.float :value
      t.string :status
      t.string :observations
      t.string :assignment
      t.string :category
      t.integer :quantity

      t.timestamps
    end
  end
end
