class BookingsController < ApplicationController
    before_action :authorized
    # def initialize
    #     Time.zone = 'Jakarta'
    # end

    def index
        # data = Doctor.select('*').joins(:docday=>[:doctime])
        data = Doctor.select('doctors.id,doctors.nama,doctors.spesialis,doctors.harga_konsul,
            docdays.hari,doctimes.start_time,doctimes.end_time').joins(:docday=>[:doctime])
        render json: data, status: :ok
    end

    def create
        params[:hari] = Date.parse(params[:hari]).strftime("%A")
        day_check = Doctor.joins(:docday).where("docdays.hari = ?", params[:hari])
        
        
        start_consult = Booking.where(start_time: DateTime.parse(params[:start_time])..DateTime.parse(params[:end_time]), doctor_id: params[:doctor_id])
        end_consult = Booking.where(end_time: DateTime.parse(params[:start_time])..DateTime.parse(params[:end_time]), doctor_id: params[:doctor_id])
        
        if day_check.present?
            
            time_check = Doctor.select('doctors.id,doctimes.start_time,doctimes.end_time').
            joins(:docday =>[:doctime])
            .where('? BETWEEN doctimes.start_time AND doctimes.end_time', params[:start_time])
            .where('? BETWEEN doctimes.start_time AND doctimes.end_time', params[:end_time])
            .where(id: params[:doctor_id])       
            
            if time_check.present?
                params[:pasien_id] = @user.id
                params[:status] = "Waiting"

                data = Booking.create(booking_param)

                render json: {
                    data: data,
                }, status: :created
            else
                # error
                render json: {status:"Unavailable time"}, status: :not_found
            end 
        else   
            # error
            render json: {status:"Unavailable day"}, status: :not_found
        end 
    end

    def list
        data = Booking.all
        render json: data, status: :ok
    end

    def show
        data = Booking.find(params[:id])
        if
            render json: data, status: :ok
        else
            render json: {status:"Error, ID is not found"}, status: :not_found
        end
    end

    def booking_param
        params.permit(:doctor_id,:pasien_id,:start_time,:end_time,:profile_pasien,:nik,:address,:status,:hari)
      end
end
