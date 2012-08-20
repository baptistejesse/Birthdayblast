class Friend < ActiveRecord::Base
  belongs_to :user
  attr_accessible :birthday, :fb_id, :name
  after_create :month_day


def month_day
unless birthday.length > 4
update_attributes(birthday: birthday.slice(0..4) ) 
end
end


end
