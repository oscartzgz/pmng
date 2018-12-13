class CreateConsumables < ActiveRecord::Migration[5.2]
  def change
    create_table :consumables do |t|
      t.string :brand
      t.string :model
      t.float :value
      t.string :type
      t.integer :quantity

      t.timestamps
    end
  end
end
