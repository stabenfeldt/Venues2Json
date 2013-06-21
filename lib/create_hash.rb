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
  end

  def work
    @final = []
    Area.all.each do |area|
      puts "area: #{area.name}"
      @r = {}
      @r[:name]   = area.name
      @r[:venues] = area.venues.map { |v| output_venue(v) }
      puts "One is #{@r}"
      @final << @r
    end
    #@r.to_json
    @final.to_json
  end

end
