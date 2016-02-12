class Allocation < ActiveRecord::Base
  has_many :price_categories
  has_many :shows
  belongs_to :user
end
