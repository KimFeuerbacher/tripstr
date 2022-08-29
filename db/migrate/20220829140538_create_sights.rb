class CreateSights < ActiveRecord::Migration[7.0]
  def change
    create_table :sights do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :name
      t.string :short_description
      t.text :long_description
      t.integer :price
      t.time :average_time
      t.references :category, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.timestamps
    end
  end
end
