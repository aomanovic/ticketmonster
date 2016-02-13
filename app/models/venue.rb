class Venue < ActiveRecord::Base
  has_many :shows
  has_many :venue_layouts
end
