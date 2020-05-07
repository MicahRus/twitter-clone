class LikesController < ApplicationController
  def create
    @tweet = params[:tweet_id]
    @user = current_user.id
    likes = { user_id: @user, tweet_id: @tweet, has_liked: true }
    @likes = Like.all
    @like = Like.new(likes)

    if @likes.empty?
      @like.save
    else
      @likes.each do |x|
        if x.user_id == @like.user_id && x.tweet_id == @like.tweet_id
          x.destroy
          @like.destroy
          break
        end
        @like.save!
      end
    end
    redirect_to request.referrer

  end
end
