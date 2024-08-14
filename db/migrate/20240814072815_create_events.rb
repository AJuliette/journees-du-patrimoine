class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.integer :uid
      t.string :name
      t.string :title
      t.text :long_description
      t.string :conditions
      t.string :daterange
      t.datetime :firstdate_begin
      t.datetime :firstdate_end
      t.datetime :lastdate_begin
      t.datetime :lastdate_end
      
      t.timestamps
    end
  end
end
