class AddMessageToFriend < ActiveRecord::Migration
  def change
    add_column :friends, :message, :string
  end
end
