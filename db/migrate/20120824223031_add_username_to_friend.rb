class AddUsernameToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :username, :string
  end
end
