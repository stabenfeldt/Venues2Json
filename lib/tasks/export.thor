$LOAD_PATH << '../'
require './lib/create_hash.rb'

class Export < Thor
  desc "to_json", "create a new venue for each matching value"
  def to_json(file=nil)
    require File.expand_path('config/environment.rb')
    c = CreateHash.new
    if file
      File.open(file, 'w') { |file| file.write(c.work) }
    else
      puts "#{c.work}"
    end
  end
end
