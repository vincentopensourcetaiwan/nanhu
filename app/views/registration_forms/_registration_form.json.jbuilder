json.extract! registration_form, :id, :name, :phone, :created_at, :updated_at
json.url registration_form_url(registration_form, format: :json)
