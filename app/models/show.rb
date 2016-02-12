class Show < ActiveRecord::Base
  belongs_to :event
  belongs_to :venue
  belongs_to :venue_layout
  belongs_to :allocation
end
