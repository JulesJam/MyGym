json.extract! membership_fee, :id, :paid_amount, :paid_date, :user_id, :created_at, :updated_at
json.url membership_fee_url(membership_fee, format: :json)