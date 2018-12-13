class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :job
      t.string :immediate_boss
      t.references :phone_device, foreign_key: true
      t.references :computer_equipment, foreign_key: true
      t.references :accessory, foreign_key: true
      t.references :printer, foreign_key: true

      t.timestamps
    end
  end
end
