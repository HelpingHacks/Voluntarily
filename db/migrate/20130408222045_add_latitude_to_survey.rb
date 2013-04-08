class AddLatitudeToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :latitude, :decimal, default: 0
    add_column :surveys, :longitude, :decimal, default: 0
  end
end
