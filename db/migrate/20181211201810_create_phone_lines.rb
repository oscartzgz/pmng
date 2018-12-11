class CreatePhoneLines < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_lines do |t|
      t.string :number
      t.string :SIM_key

      t.timestamps
    end
  end
end
