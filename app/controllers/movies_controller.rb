class MoviesController < ApplicationController

  def index
    @default_categories = ['Basic', 'Git', 'Ruby', 'Ruby on Rails']
    @search_category = params[:category] || @default_categories
    @movies = Movie.where(category: @search_category).page(params[:page])
    @search_movies = Movie.where(category: @default_category)

    # タグ表示用
    @tags = Movie.tag_counts_on(:tags).order('count DESC')
    if params[:tag_name]
      @movies = @movies.tagged_with(params[:tag_name], :any => true).page(params[:page])
    end
  end

  
end
