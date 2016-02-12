module AllocationsHelper

  def get_price
    price_category = PriceCategory.find_by(id: @allocation[:price_category_id])
    @get_price = price_category.price
  end

  def get_show_name
    show = Show.find_by(id: @allocation[:show_id])
    event = Event.find_by(id: show.event_id)
    @get_show_name = event.name
  end

  def get_show_time
    show = Show.find_by(id: @allocation[:show_id])
    @get_show_name = show.showtime
  end

  def get_show_venue
    show = Show.find_by(id: @allocation[:show_id])
    venue = Venue.find_by(id: show.venue_id)
    @get_show_name = venue.name
  end

  def get_user
    @get_user = User.find_by(id: @allocation[:user_id])
  end
end
