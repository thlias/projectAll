class Micropost < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user
  
  validates :user_id, :presence=>true
  validates :content, :presence=>true, :length=>{:maximum=>140}
  # Arranges the order in the array according to an attribute
  #DESC is from newest to oldest
  default_scope :order=>"microposts.created_at DESC"
  
  
end
