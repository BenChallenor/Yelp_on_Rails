json.extract! review, :id, :rating, :restaurant_id, :created_at, :updated_at
json.url review_url(review, format: :json)