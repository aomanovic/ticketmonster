class RenamePriceCategoriesColumn < ActiveRecord::Migration
  def change
    rename_column :price_categories, :category_id, :ticket_category_id
  end
end
