class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :postcode
      t.string :geolocationn

      t.timestamps
    end
  end
end
