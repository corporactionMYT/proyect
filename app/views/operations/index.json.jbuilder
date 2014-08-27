json.array!(@operations) do |operation|
  json.extract! operation, :id, :name, :area_id, :description, :maquina, :time_standar
  json.url operation_url(operation, format: :json)
end
