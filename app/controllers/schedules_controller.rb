class SchedulesController < ApplicationController
    before_action :authorized

    def index
        schedules = Schedule.select("nama, spesialis, schedule, status, schedules.id as id")
        .joins("JOIN doctors ON schedules.id_dokter = doctors.id").where("schedules.id_pasien = #{@user.id}")
        
        if schedules.present?
            render json:{
                data: schedules
            }, status: :ok
        else
            render json: {error: ['You do not have any schedule. Please make an appoitment first.']}, status: :not_found
        end
    end

    def show
        schedule = Schedule.select("nama, spesialis, harga_konsul, lokasi, nik, profile_pasien, schedule, address, status, schedules.id as id")
        .joins("JOIN doctors ON schedules.id_dokter = doctors.id").where("schedules.id = #{params[:id]}")
        
        if schedule.present?
            render json: {
                data: schedule
            }, status: :ok
        else
            render json: {error: ['Schedule not found.']}, status: :not_found
        end
    end

    def show_today
        schedule = Schedule.select("nama, spesialis, harga_konsul, lokasi, nik, profile_pasien, schedule, address, status, schedules.id as id")
        .joins("JOIN doctors ON schedules.id_dokter = doctors.id")
        .where("schedules.id_pasien = #{@user.id} AND schedules.schedule = '#{Time.zone.now.beginning_of_day}'")
        
        if schedule.present?
            render json: {
                data: schedule
            }, status: :ok
        else
            render json: {error: ['Today, you do not have any schedule.']}, status: :not_found
        end
    end

    def create
        params[:id_pasien] = @user.id
        schedule = Schedule.create(create_params)
  
        render json: {
            data: schedule,
        }, status: :created
  
        rescue StandardError => e
            render json: {
                message: e
            }, status: :bad_request
    end

    def create_params
        params.permit(:id_pasien, :id_dokter, :schedule, :profile_pasien, :nik, :address, :status)
    end

    def update_params
        params.permit(:id, :id_pasien, :id_dokter, :schedule, :profile_pasien, :nik, :address, :status)
    end
end
