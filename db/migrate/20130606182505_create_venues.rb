class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :title
      t.string :address
      t.time :sun_from
      t.time :sun_to
      t.string :lat
      t.string :long
      t.references :area, index: true

      t.timestamps
    end
  end
end
