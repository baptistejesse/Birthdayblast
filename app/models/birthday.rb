class Birthday < ActiveRecord::Base
  attr_accessible :message
  belongs_to :user
  after_create :gogo




end
