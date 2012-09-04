class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user



after_create do |x|
 #want to get user and get each friend id and set their message and link 
@user = User.find_by_id(x.user.id)  
@friends = @user.friends.where(:fb_id => x.friend)  
@friends.update_attributes(links: x.linky, message: x.message)  
end



end
