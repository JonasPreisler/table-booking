json.extract! guest, :id, :first_name => "first name", :last_name, => "last name" :gender, :created_at, :updated_at
json.url guest_url(guest, format: :json)
