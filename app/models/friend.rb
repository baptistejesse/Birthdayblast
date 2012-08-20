class Friend < ActiveRecord::Base
  belongs_to :user
  attr_accessible :birthday, :fb_id, :name



def month_day
update_attributes(birthday: birthday.slice(0..4) ) 

end



end
