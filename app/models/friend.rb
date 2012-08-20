class Friend < ActiveRecord::Base
  belongs_to :user
  attr_accessible :birthday, :fb_id, :name
end
