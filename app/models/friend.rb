class Friend < ActiveRecord::Base
  belongs_to :user
  attr_accessible :birthday, :fb_id, :name
  after_create :month_day


def month_day #!=nil
if self.birthday.present? and self.birthday.length > 5
@stuff = self.update_attributes(birthday: self.birthday.slice(0..4))
end
end



end
