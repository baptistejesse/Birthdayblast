class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user
  after_save :set_message


def set_message
 #want to get user and get each friend id and set their message and link 
@friends = Friend.where("fb_id = :fb_id AND user_id = :user_id", :fb_id => self.friend, :user_id => self.user_id)
@friends.spotify = self.linky,
@friends.message = self.message
@friends.save
end



end
