class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.integer :quantity
      t.references :accessory, foreign_key: true
      t.references :computer_equipment, foreign_key: true
      t.references :printer, foreign_key: true
      t.references :consumable, foreign_key: true

      t.timestamps
    end
  end
end
