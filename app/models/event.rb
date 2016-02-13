class Event < ActiveRecord::Base
  has_many :shows
  belongs_to :event_category
  has_many :price_categories
  def self.search(query)
# where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%")
  end

end
