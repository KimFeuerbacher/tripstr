class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.integer :number_of_stops
      t.time :duration
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
