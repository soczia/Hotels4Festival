class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.number :menager

      t.timestamps
    end
  end
end
