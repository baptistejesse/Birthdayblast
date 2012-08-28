class AddFriendToMessage < ActiveRecord::Migration
  def change
     add_column :birthdays, :fb_id, :string
  end
end
