class Friend < ActiveRecord::Base
  belongs_to :user
  attr_accessible :birthday, :fb_id, :name
  after_save :month_day


def month_day
unless self.birthday.length > 5
@stuff = self.birthday = birthday.slice(0..4) 
@stuff.save
end
end


end
