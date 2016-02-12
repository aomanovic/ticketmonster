class RenameShowsColumn < ActiveRecord::Migration
  def change
    rename_column :shows, :layout_id, :venue_layout_id
  end
end
