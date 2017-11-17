class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.integer :party_size, null: false
      t.date :date, null: false
      t.datetime :time, nul: false
      t.integer :phone_number

      t.timestamps
    end
  end
end
