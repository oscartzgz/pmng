class CreatePhoneDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_devices do |t|
      t.string :brand
      t.string :model
      t.string :sku
      t.float :value
      t.string :status
      t.string :observations
      t.string :assignment
      t.string :quantity
      t.string :IMEI
      t.references :phone_line, foreign_key: true

      t.timestamps
    end
  end
end
