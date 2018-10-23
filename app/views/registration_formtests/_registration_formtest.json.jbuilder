json.extract! registration_formtest, :id, :name, :phone, :created_at, :updated_at
json.url registration_formtest_url(registration_formtest, format: :json)
