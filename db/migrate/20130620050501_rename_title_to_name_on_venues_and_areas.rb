class RenameTitleToNameOnVenuesAndAreas < ActiveRecord::Migration
  def change
    rename_column :areas,  :title, :name
    rename_column :venues, :title, :name
  end
end
