class ChangeDateToDatetime < ActiveRecord::Migration
  def change
    remove_column :events, :start_date
    add_column :events, :start_date, :datetime
    remove_column :events, :end_date
    add_column :events, :end_date, :datetime
  end
end
