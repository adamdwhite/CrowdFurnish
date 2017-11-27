json.extract! payment, :id, :payment_type, :account_number, :user_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
