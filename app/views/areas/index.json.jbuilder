json.array!(@areas) do |area|
  json.extract! area, :title
  json.url area_url(area, format: :json)
end