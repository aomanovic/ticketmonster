class FixSectionRows < ActiveRecord::Migration
  def change
    drop_table :section_rows

    create_table :section_rows do |t|
      t.string :name
      t.integer :capacity
      t.integer :section_id

      t.timestamps null: false
    end
  end
end
