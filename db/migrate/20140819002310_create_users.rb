class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_picture
      t.string :education
      t.date :birthday
      t.string :location

      t.timestamps
    end
  end
end
