class CreateFlatContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :flat_contracts do |t|
      t.references :tenant, foreign_key: true
      t.references :flat, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
