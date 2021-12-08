class ArticlesController < ApplicationController
  before_action :authorized, except: %i[index show]

  def index
    articles = Article.all
    render json: articles, status: :ok
  end

  def show
    articles = Article.find(params[:id])
    render json: articles, status: :ok
  rescue ActiveRecord::RecordNotFound => e
    render json: {
      message: e
    }, status: :not_found
  end
end
