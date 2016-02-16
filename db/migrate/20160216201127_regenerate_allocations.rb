class RegenerateAllocations < ActiveRecord::Migration
  def change
    drop_table :allocations

    create_table :allocations do |t|
      t.string :assigned
      t.integer :user_id
      t.integer :show_id
      t.integer :row_id
      t.integer :quantity
      t.integer :start_seat
      t.integer :end_seat
      t.integer :price_category_id
      t.timestamps null: false
    end
  end
end
