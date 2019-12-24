json.extract! house, :id, :name, :price, :address, :old, :remarks, :created_at, :updated_at
json.url house_url(house, format: :json)
