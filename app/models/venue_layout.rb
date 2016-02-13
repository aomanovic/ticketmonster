class VenueLayout < ActiveRecord::Base
  has_many :shows
  has_many :price_categories
  has_many :sections
  belongs_to :venue
end
