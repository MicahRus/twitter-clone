class TweetsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tweets = Tweet.all
    @likes = Like.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.create(tweet_params)
    redirect_to @tweet
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end
