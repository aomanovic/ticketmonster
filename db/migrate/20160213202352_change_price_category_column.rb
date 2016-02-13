class ChangePriceCategoryColumn < ActiveRecord::Migration
  def change
    rename_column :price_categories, :venue_id, :venue_layout_id
  end

end
