class RemoveNameToEvents < ActiveRecord::Migration[7.2]
  def change
    remove_column :events, :name
  end
end
