class AddPictureToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :friend_pic, :string
  end
end
