class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :address
      t.string :city 
      t.integer :zipcode
      t.integer :listing_id
      t.timestamps
    end
  end
end
