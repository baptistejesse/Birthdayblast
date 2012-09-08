class AddStuffToBirthdays < ActiveRecord::Migration
  def change
    add_column :birthdays, :friend_id, :integer
  end
end
