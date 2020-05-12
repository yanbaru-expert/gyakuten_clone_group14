class MoviesController < ApplicationController

  def index
    @default_categories = ['Basic', 'Git', 'Ruby', 'Ruby on Rails']
    @search_category = params[:category] || @default_categories
    @movies = Movie.where(category: @search_category).page(params[:page])
    @search_movies = Movie.where(category: @default_category)

    # タグ検索用
    @most_used_tags = ActsAsTaggableOn::Tag.most_used(10)
    if params[:tag_list]
      # debugger
      @movies = Movie.tagged_with(params[:tag_list]).page(params[:page])
    end
  end
  
end
