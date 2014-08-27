json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :start_date, :end_date, :title, :description, :branch_id, :weblink, :zone_id, :cateogry_id, :subcateogry_id
  json.url advertise_url(advertise, format: :json)
end
