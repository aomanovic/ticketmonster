class AddPriceCategoryIdToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :price_category_id, :integer
  end
end
