json.extract! guestlist, :id, [:first_name => "first name"], :last_name, :gender, :created_at, :updated_at
json.url guestlist_url(guestlist, format: :json)
