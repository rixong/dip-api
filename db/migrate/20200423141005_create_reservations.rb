class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.date :arrival
      t.date :departure
      t.boolean :pending
      t.string :season
      t.integer :user_id
      t.integer :cabin_id
      t.integer :annual_report_id

      t.timestamps
    end
  end
end
