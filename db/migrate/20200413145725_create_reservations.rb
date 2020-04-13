class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :guest_amount
      t.date :check_in
      t.date :check_out
      t.string :availability 
      t.float :total_price
      t.integer :confirmation_number
      t.integer :user_id
      t.integer :payment_id
      t.timestamps
    end
  end
end
