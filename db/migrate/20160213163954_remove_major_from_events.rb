class RemoveMajorFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :major
  end
end
