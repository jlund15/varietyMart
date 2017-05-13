json.extract! featured_item, :id, :image, :subtitle, :body, :created_at, :updated_at
json.url featured_item_url(featured_item, format: :json)
