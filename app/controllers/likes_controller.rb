class LikesController < ApplicationController

  def create
    @tweet = params[:tweet_id]
    @user = current_user.id
    likes = {user_id: @user, tweet_id: @tweet, has_liked: true}
    @like = Like.create(likes)
    
    @like.save!
    if @like.save 
      redirect_to user_path(@user)
      puts "*" * 25
      puts "Like succeeded"
      puts "*" * 25
    else
      redirect_to tweet_path(@tweet)
      puts "*" * 25
      puts "Like did not succeed"
      puts "*" * 25
    end
  

  end

end
