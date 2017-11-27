json.extract! project, :id, :name, :description, :funding_goal, :start_date, :end_date, :active, :image_url, :about, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
