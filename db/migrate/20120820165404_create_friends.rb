class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :fb_id
      t.string :birthday

      t.timestamps
    end
  end
end
