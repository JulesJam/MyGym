json.extract! activity_record, :id, :activity_id, :type, :date, :status, :user_id, :created_at, :updated_at
json.url activity_record_url(activity_record, format: :json)