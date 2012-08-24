class Friend < ActiveRecord::Base
  belongs_to :user
  attr_accessible :birthday, :fb_id, :name



def month_day

@stuff = self.update_attributes(birthday: self.birthday.slice(0..4)) unless self.birthday.length > 5

end
end


end
