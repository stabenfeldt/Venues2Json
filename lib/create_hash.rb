require 'json'
require File.expand_path('config/environment.rb')

  def output_venue(v)
    h = { 
      name:      v.name,
      address:   v.address,
      url:       v.url,
      latitude:  v.latitude,
      longitude: v.longitude,
      sun_from:  v.sun_from,
      sun_to:    v.sun_to
    }
  end

class CreateHash
  def initialize
    @r = {}
  end

  def work
    Area.all.each do |area|
      @r[:name]   = area.name
      @r[:venues] = area.venues.map { |v| output_venue(v) }
    end
    @r.to_json
  end

end
