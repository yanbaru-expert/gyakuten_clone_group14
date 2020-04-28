class TextsController < ApplicationController
  def index
    @texts = Text.all
    @query = Article.ransack(params[:q])
    @articles = @query.result.by_publish_time_desc

    if params[:q].present?
      render json:  @articles.select("title").map { |e| e.title  }.to_json
    end
  end

  def show
    @text = Text.find(params[:id])
  end

end