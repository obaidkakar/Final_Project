json.extract! session, :id, :Sess_Starting, :Sess_ending, :created_at, :updated_at
json.url session_url(session, format: :json)