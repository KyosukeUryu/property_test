class RemoveColumnsNotNullFromNearestStations < ActiveRecord::Migration[5.0]
  def change
    change_column_null :nearest_stations, :route, true
    change_column_null :nearest_stations, :name, true
    change_column_null :nearest_stations, :on_foot, true
  end
end
