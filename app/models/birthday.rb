class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user
  after_create :gogo


def gogo
 #want to get user and get each friend id and set their message and link
@user = User.where(id: self.user_id)  
@friend = @user.friends.where(fb_id: self.friend)
@friend.spotify = self.linky,
@friend.message = self.message
@friend.save
end



end
