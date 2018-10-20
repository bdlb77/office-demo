class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.integer :attendees
      t.integer :capacity
      t.string :address
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
