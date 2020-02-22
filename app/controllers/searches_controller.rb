class SearchesController < ApplicationController
  
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def search
    @tweets = Tweet.search(params[:keyword])
  end

end
