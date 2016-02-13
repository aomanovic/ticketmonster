class RenameCategoriesColumn < ActiveRecord::Migration
  def change
    rename_column :events, :category_id, :event_category_id
  end
end
