json.array!(@venues) do |venue|
  json.extract! venue, :title, :address, :sun_from, :sun_to, :lat, :long, :area_id
  json.url venue_url(venue, format: :json)
end