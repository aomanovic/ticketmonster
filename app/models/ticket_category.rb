class TicketCategory < ActiveRecord::Base
  has_many :price_categories
end
