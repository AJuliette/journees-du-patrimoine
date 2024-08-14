class CreateLocations < ActiveRecord::Migration[7.2]
  def change
    create_table :locations do |t|
      t.integer :uid
      t.string :name
      t.string :address
      t.integer :postalcode
      t.string :city
      t.string :region
      t.string :department
      t.text :description
      t.text :location_access
      t.timestamps
    end
  end
end
