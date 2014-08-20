class FriendshipsController < ApplicationController

   # try nesting controllers
   # /user/1/friendships
   # Post to that with the friend id

  def add
    @user = User.find(params[:id])
    @friend = User.find([params[:friend_id])

    # Add each other as friends
    @user.friends << @friend
    @friend.friends << @user
    redirect_to root_url

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
