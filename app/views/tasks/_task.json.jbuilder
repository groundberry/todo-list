json.extract! task, :id, :task, :completed, :created_at, :updated_at
json.url task_url(task, format: :json)
