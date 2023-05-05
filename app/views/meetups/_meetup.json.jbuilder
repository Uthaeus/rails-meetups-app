json.extract! meetup, :id, :title, :description, :time, :date, :main_image, :thumb_image, :created_at, :updated_at
json.url meetup_url(meetup, format: :json)
