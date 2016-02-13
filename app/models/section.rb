class Section < ActiveRecord::Base
  has_many :price_categories
  belongs_to :venue_layout
  has_many :section_rows
end
