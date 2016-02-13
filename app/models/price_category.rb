class PriceCategory < ActiveRecord::Base
  belongs_to :event
  belongs_to :venue_layout
  belongs_to :ticket_category
  belongs_to :section
  belongs_to :show
  belongs_to :allocation
end
