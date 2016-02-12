class Venue < ActiveRecord::Base
  has_many :shows
  has_many :price_categories
  has_many :venue_layouts
end
