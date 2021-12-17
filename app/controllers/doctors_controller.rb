class DoctorsController < ApplicationController
    before_action :authorized, except: %i[index show search]

    def index
        doctors = Doctor.page(params[:page]).per(params[:per_page])
        render json: {
            data: doctors,
            meta: {
                count: doctors.count, # menghitung item tiap page
                total: doctors.total_pages # total page yang dibuat
            }
        }
    end
    
    def show
        @export_data = Doctor.find(params[:id])
        render :json => @export_data.to_json(:include => { :docday => { :except => [:doctor_id, :id], :include => {:doctime => { :except => [:docday_id] } }  }}), status: :ok
        
        rescue ActiveRecord::RecordNotFound => e
            render json: {
            message: e
            }, status: :not_found
    end

    def search
        doctors = Doctor.where('nama ILIKE :search OR spesialis ILIKE :search', search: "%#{params[:search]}%")
        render json: doctors, status: :ok
        
        rescue ActiveRecord::RecordNotFound => e
          render json: {
            message: e
          }, status: :not_found
    end

end
