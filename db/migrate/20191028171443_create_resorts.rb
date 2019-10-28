class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.string :resortname
      t.string :url
      t.string :logo
      t.string :annualsnow
      t.string :lifts
      t.string :score
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
