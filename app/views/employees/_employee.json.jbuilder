json.extract! employee, :id, :name, :job, :immediate_boss, :phone_device_id, :computer_equipment_id, :accessory_id, :printer_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
