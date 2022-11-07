son.extract! post, :id, :title, :body, :, :published_at, :admin_user_id, :created_at, :updated_at
json.url post_url(post, format: :json)