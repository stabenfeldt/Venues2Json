class AddConfirmedToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :confirmed, :boolean
  end
end
