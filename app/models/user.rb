class User < ActiveRecord::Base
  # define relationships with a Friendship here
  has_and_belongs_to_many :friends, join_table: "friendships", class_name: "User"
  #,:association_foreign_key => "friend_id", :foreign_key => "user_id"
end
