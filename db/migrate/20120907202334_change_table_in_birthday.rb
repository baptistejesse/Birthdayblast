class ChangeTableInBirthday < ActiveRecord::Migration
    def change
  rename_column :friends, :links, :spotify
  
  end

 
end
