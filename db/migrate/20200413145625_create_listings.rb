class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :description
      t.string :rental_type
      t.string :ameneties
      t.integer :user_id
      t.integer :message_id
      
      t.timestamps
    end
  end
end
