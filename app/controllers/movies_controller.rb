class MoviesController < ApplicationController

  def index
    @default_categories = ['Basic', 'Git', 'Ruby', 'Ruby on Rails']
    @search_category = params[:category] || @default_categories
    @movies = Movie.where(category: @search_category).page(params[:page])
  end

  def search
    if params[:keyword].empty?
      @movies = ["keyword is nothing"]
    else
      @movies = Movie.where(category: @default_category).where('title iLIKE(?)', "%#{params[:keyword]}%").limit(10)
    end
      render json: @movies
  end

end
