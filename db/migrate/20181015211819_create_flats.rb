class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :flat_type
      t.string :address
      t.integer :floor_number
      t.integer :occupancy
      t.integer :bedrooms
      t.integer :bathrooms
      t.boolean :availability, default: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
