json.extract! service, :id, :image, :title, :duration, :cost, :category, :description, :created_at, :updated_at, :user_id
json.url service_url(service, format: :json)
