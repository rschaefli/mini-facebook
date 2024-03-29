class FriendshipsController < ApplicationController

   # try nesting controllers
   # /user/1/friendships
   # Post to that with the friend id

  def create
    @user = User.find(params[:query][:user_id])
    @friend = User.find(params[:query][:friend_id])

    puts @user.id
    puts @friend.id

    # Add each other as friends
    @user.friends << @friend
    @friend.friends << @user
    redirect_to @user

    #@friendship = @user.friendships.build(:friend_id => params[:friend_id])
    #if @friendship.save
    #  flash[:notice] = "Added friend."
    #  redirect_to root_url
    #else
    #  flash[:error] = "Unable to add friend."
    #  redirect_to root_url
    #end
  end

  #def destroy
  #  @friendship = current_user.friendships.find(params[:id])
  #  @friendship.destroy
  #  flash[:notice] = "Removed friendship."
  #  redirect_to current_user
  #end

end
