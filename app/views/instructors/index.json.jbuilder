json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :document_id, :number_document, :name, :last_name, :gender, :street_address, :email, :phone, :area_id, :user_id, :online_id
  json.url instructor_url(instructor, format: :json)
end
