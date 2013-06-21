$LOAD_PATH << '../'
require './lib/create_hash.rb'

class Export < Thor
  desc "to_json", "create a new venue for each matching value"
  def to_json
    require File.expand_path('config/environment.rb')
    c = CreateHash.new
    puts "#{c.work}"
  end
end
