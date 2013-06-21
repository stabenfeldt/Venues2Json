require 'json'
require File.expand_path('config/environment.rb')

  def output_venue(v)
    return unless v.sun_from and v.sun_to
    return unless v.latitude and v.longitude
    { 
      name:      v.name,
      address:   v.address,
      url:       v.url,
      latitude:  v.latitude,
      longitude: v.longitude,
      sun_from:  (v.sun_from.strftime '%H:%M'),
      sun_to:    (v.sun_to.strftime   '%H:%M')
    }
  end

class CreateHash
  def initialize
  end

  def work
    @final = []
    Area.all.each do |area|
      @r = {}
      @r[:name]   = area.name
      @r[:venues] = (area.venues.map { |v| output_venue(v) }).compact
      @final << @r
    end
    @final.to_json
  end

end
