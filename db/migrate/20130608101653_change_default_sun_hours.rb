class ChangeDefaultSunHours < ActiveRecord::Migration
  def change
    change_column_default(:venues, :sun_from, '08:00')
    change_column_default(:venues, :sun_to,   '23:30')
  end
end
