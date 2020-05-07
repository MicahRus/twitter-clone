class LikesController < ApplicationController
  def create
    @tweet = params[:tweet_id]
    @user = current_user.id
    likes = { user_id: @user, tweet_id: @tweet, has_liked: true }
    @like = Like.create(likes)
    @like.save
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
  end
end
