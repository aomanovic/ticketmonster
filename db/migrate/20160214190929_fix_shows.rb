class FixShows < ActiveRecord::Migration
  def change
    remove_column :shows, :showtime
    add_column :shows, :showtime, :datetime
  end
end
