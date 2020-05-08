class ProfileController < ApplicationController
  def index
    @user = User.where(username: params[:username])[0]
    @tweets = Tweet.all
    @likes = Like.all
end
