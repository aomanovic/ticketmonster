class AddNameToEventCategories < ActiveRecord::Migration
  def change
    add_column :event_categories, :name, :string
  end
end
