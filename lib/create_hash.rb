require 'json'
require File.expand_path('config/environment.rb')

class CreateHash
  r = {}
  json_file = File.open('../iSola/resources/areas.json').read
  parsed = JSON.parse(json_file)
=begin
  {"name"=>"Grünerløkka", "venues"=>[{"name"=>"Parkteateret", "address"=>"Olaf Ryes plass 11", "url"=>"http://norid.no",
  "longitude"=>10.758304, "open_from"=>"09:00", "open_to"=>"22:00"}, {"name"=>"Ryes"....
=end

  Area.all.each do |area|
    r[:name]   = area.name
    r[:venues] = [area.venues]
  end
  puts "Our hash is: #{r}\n\n"
end
