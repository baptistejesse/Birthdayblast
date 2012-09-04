class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user



after_create do |message|
 #want to get user and get each friend id and set their message and link 
@friends = Friend.where("fb_id = :fb_id AND user_id = :user_id", :fb_id => message.friend, :user_id => message.user_id)
@friends.links = message.linky
@friends.message = message.message
@friends.save

end



end
