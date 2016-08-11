json.extract! photo, :id, :title, :description, :status, :album, :poster, :User_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)