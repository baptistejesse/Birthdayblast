class ChangeTableInBirthday < ActiveRecord::Migration
    def change
  rename_column :birthdays, :links, :spotify
  
  end

 
end
