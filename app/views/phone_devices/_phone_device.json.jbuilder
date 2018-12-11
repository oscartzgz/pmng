json.extract! phone_device, :id, :brand, :model, :sku, :value, :status, :observations, :assignment, :quantity, :IMEI, :phone_line_id, :created_at, :updated_at
json.url phone_device_url(phone_device, format: :json)
