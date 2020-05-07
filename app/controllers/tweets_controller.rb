class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
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

  def edit
    @tweet = Tweet.find(params[:id])
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
    params.require(:tweet).permit(:body)
  end

  def set_tweet
    id = params[:id]
    @tweet = Tweet.find(id)
  end
end
