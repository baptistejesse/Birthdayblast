class AddIndexTo < ActiveRecord::Migration
    def change
       add_index :friends, :message
       add_index :friends, :birthday
       add_index :friends, :fb_id 
       add_index :users, :uid
       add_index :friends, :user_id
       add_index :birthdays, :user_id
   
  end

end

