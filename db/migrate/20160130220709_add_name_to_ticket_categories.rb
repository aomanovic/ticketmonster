class AddNameToTicketCategories < ActiveRecord::Migration
  def change
    add_column :ticket_categories, :name, :string
  end
end
