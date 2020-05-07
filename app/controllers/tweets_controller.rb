class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :tweets_and_likes, only: [:index, :show]
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = current_user.tweets.create(tweet_params)
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @tweet.destroy
    redirect_to root_path
  end

  private

  def tweet_params
    params.permit(:body)
  end

  def set_tweet
    id = params[:id]
    @tweet = Tweet.find(id)
  end

  def tweets_and_likes
    @tweets = Tweet.all
    @likes = Like.all
  end
end
