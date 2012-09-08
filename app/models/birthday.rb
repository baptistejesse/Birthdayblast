class Birthday < ActiveRecord::Base
  attr_accessible :message,:linky, :friend_id, :user_id, :fb_id, :friend
  belongs_to :user
  belongs_to :friend




end
