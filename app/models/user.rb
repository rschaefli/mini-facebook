class User < ActiveRecord::Base
  # define relationships with a Friendship here
  has_many :friendships
end
