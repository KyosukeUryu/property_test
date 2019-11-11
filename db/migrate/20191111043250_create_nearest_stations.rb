class CreateNearestStations < ActiveRecord::Migration[5.0]
  def change
    create_table :nearest_stations do |t|
      t.string :route, null: false
      t.string :name, null: false
      t.integer :on_foot, null: false
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
