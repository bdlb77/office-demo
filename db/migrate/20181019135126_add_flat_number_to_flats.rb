class AddFlatNumberToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :flat_number, :string
  end
end
