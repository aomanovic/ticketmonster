class ChangeSectionColumn < ActiveRecord::Migration
  def change
    rename_column :sections, :layout_id, :venue_layout_id
  end
end
