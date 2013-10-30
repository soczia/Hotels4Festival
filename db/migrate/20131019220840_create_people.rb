class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :imie
      t.string :nazwisko
      t.string :role
      t.number :group_id
      t.string :age
      t.number :ableToShareRoom
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
