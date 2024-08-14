class RenameColumnAccessForLocations < ActiveRecord::Migration[7.2]
  def change
    rename_column :locations, :location_access, :access
  end
end
