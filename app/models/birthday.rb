class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user
  belongs_to :friend




end
