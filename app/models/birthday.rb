class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user



after_create do |message|
 #want to get user and get each friend id and set their message and link 
@user = User.find_by_id(message.user_id)  
 @user.friends.select { |friend| 
if friend.fb_id == message.friend
friend.links = message.linky
friend.message = message.message
friend.save
end
}

end



end
