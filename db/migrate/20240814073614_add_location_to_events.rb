class AddLocationToEvents < ActiveRecord::Migration[7.2]
  def change
    add_reference :events, :location, null: false, foreign_key: true
  end
end
