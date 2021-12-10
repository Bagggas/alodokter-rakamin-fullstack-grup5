class ArticlesController < ApplicationController
  before_action :authorized, except: %i[index show search]

  def index
    articles = Article.page(params[:page]).per(params[:per_page])

    render json: {
        data: articles,
        meta: {
            count: articles.count, # menghitung item tiap page
            total: articles.total_pages # total page yang dibuat
        }
    }
  end

  def create
      params[:penulis] = @user.id
      article = Article.create(create_params)

      render json: {
          data: article,
      }, status: :created

      rescue StandardError => e
          render json: {
              message: e
          }, status: :bad_request
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

  private

  def create_params
    params.permit(:judul, :konten, :penulis, :foto)
  end

end
