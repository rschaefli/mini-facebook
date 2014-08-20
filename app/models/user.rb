class User < ActiveRecord::Base
  # define relationships with a Friendship here
  has_and_belongs_to_many :friends, join_table: "friendships", class_name: "User"
end
