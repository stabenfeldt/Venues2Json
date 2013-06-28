class Venue < ActiveRecord::Base
  belongs_to :area

  validates_presence_of    :name, :address
  validates_uniqueness_of  :name, :address

  geocoded_by :address          # can also be an IP address
  after_validation :geocode     # auto-fetch coordinates
end
