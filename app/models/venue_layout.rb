class VenueLayout < ActiveRecord::Base
  has_many :shows
  belongs_to :venue
end
