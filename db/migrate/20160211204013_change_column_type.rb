class ChangeColumnType < ActiveRecord::Migration
  def change
    remove_column :price_categories, :price
    add_column :price_categories, :price, :string
  end
end
