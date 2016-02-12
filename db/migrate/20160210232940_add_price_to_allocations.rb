class AddPriceToAllocations < ActiveRecord::Migration
  def change
    add_column :allocations, :price, :string
  end
end
