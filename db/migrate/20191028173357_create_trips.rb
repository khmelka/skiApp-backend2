class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :date
      t.string :notes
      t.references :resort, foreign_key: true

      t.timestamps
    end
  end
end
