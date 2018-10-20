class CreateEventBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :event_bookings do |t|
      t.boolean :approved
      t.boolean :expired
      t.references :event, foreign_key: true
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
