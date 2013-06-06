class ChangeTypeForLongAndLatOnVenues < ActiveRecord::Migration
  def change
    remove_column :venues, :long
    remove_column :venues, :lat

    add_column    :venues, :longitude, :float
    add_column    :venues, :latitude, :float
  end
end
