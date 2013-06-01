class User < ActiveRecord::Base
  attr_accessible :email, :name
  # associate microposts to a user (1/2)
  # other is in app/models/micropost.rb

  has_many :microposts
end
