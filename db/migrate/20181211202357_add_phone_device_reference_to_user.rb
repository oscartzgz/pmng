class AddPhoneDeviceReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :phone_device, foreign_key: true
  end
end
