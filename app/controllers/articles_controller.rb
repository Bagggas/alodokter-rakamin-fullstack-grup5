class ArticlesController < ApplicationController
  before_action :authorized, only: [:auto_login]

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
