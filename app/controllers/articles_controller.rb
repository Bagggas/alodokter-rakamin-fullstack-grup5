class ArticlesController < ApplicationController
  before_action :authorized, except: %i[index show search]

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

  def search
    articles = Article.where('judul ILIKE :search OR konten ILIKE :search OR penulis ILIKE :search', search: "%#{params[:search]}%")
    render json: articles, status: :ok
    
    rescue ActiveRecord::RecordNotFound => e
      render json: {
        message: e
      }, status: :not_found
  end

end
