class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.integer :card_number
      t.date :expiration_date
      t.integer :cvc
      t.string :name 
      
      t.timestamps
    end
  end
end
