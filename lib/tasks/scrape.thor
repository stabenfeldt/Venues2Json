require 'open-uri'
require 'nokogiri'

class Scrape < Thor
  desc "web", "create a new venue for each matching value"
  def web(url)
    require File.expand_path('config/environment.rb')
    doc = Nokogiri::HTML( open(url) )
    doc.css('h2').each do  |h| 
    v = Venue.where(title: h.text).first_or_create
    puts "Saved #{v.title}"  
    v.url     = Google::Search::Web.new(query: v.title + " Oslo").first.uri      rescue nil
    v.address = Google::Search::Local.new(query: v.title + " Oslo" ).first.street_address  rescue nil
    v.save
    end
  end
end
