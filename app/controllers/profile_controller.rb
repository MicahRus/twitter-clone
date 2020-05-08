class ProfileController < ApplicationController
  def index
    @tweets = Tweet.all
    @likes = Like.all
  end
end
