class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.string :message

      t.timestamps
    end
  end
end
