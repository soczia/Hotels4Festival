class CreateStays < ActiveRecord::Migration
  def change
    create_table :stays do |t|
      t.date :check_in
      t.date :check_out
      t.integer :person_id
      t.integer :group_id

      t.timestamps
    end
  end
end
