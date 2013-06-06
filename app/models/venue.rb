class Venue < ActiveRecord::Base
  belongs_to :area

  geocoded_by :address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
end
