class DropVenueLayouts < ActiveRecord::Migration
  def change
    drop_table :venue_layouts

    create_table :venue_layouts do |t|
      t.integer :venue_id
      t.string :name
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
