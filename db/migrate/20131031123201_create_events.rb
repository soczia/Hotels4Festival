class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :start_at
      t.date :end_at
      t.string :name

      t.timestamps
    end
  end
end
