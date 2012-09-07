class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user
  after_create :set_message


def set_message
 #want to get user and get each friend id and set their message and link 
@friends = Friend.where("fb_id = :fb_id AND user_id = :user_id", :fb_id => self.friend, :user_id => self.user_id)
@friends.update_attributes( spotify: self.linky, message: self.message)
end



end
