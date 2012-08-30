class AddUserToBirthdays < ActiveRecord::Migration
  def change
  add_column :birthdays, :linky ,:string
  add_column :friends, :links, :string
  add_column :birthdays, :friend, :string
  
  end
end
