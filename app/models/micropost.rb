class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id

  # associate microposts to a user (2/2)
  # other is in app/models/user.rb
  belongs_to :user

  # constrains microposts to be at most 140 characters
  validates :content, :length => { :maximum => 140 }
end
