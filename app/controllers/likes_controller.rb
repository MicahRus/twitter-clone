class LikesController < ApplicationController
  def create
    @tweet = params[:tweet_id]
    @user = current_user.id
    likes = { user_id: @user, tweet_id: @tweet, has_liked: true }
    @like = Like.create(likes)

    @like.save!
    if @like.save
      redirect_to user_path(@user)
    else
      redirect_to tweet_path(@tweet)
    end
  end
end
