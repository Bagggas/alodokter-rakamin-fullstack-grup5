class SchedulesController < ApplicationController
    before_action :authorized

    def initialize
        Time.zone = 'Jakarta'
    end

    def index
        schedules = Schedule.select("nama, spesialis, schedule, status, schedules.id as id")
        .joins("JOIN doctors ON schedules.id_dokter = doctors.id").where("schedules.id_pasien = #{@user.id}")
        
        if schedules.present?
            render json:{
                data: schedules
            }, status: :ok
        else
            render json: {error: ['You do not have any schedule. Please make an appointment first.']}, status: :not_found
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

    def cancel
        schedule = Schedule.find(params[:id])
        schedule.update_attribute(:status, "cancel")

        if schedule.valid?
            render json: { data: schedule }, status: :ok
          else
            render json: { message: 'Failed to update' }, status: 406
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
        start_consult = Schedule.where(schedule: DateTime.parse(params[:schedule])..DateTime.parse(params[:end_schedule]), id_dokter: params[:id_dokter])
        end_consult = Schedule.where(end_schedule: DateTime.parse(params[:schedule])..DateTime.parse(params[:end_schedule]), id_dokter: params[:id_dokter])

        if start_consult.present?
            render json: {
                data: "Please choose another day or time",
            }
        elsif end_consult.present?
            render json: {
                data: "Please choose another day or time",
            }
        else
            params[:id_pasien] = @user.id
            schedule = Schedule.create(create_params)
    
            render json: {
                data: schedule,
            }, status: :created
        end
    end

    private

    def create_params
        params.permit(:id_pasien, :id_dokter, :schedule, :end_schedule, :profile_pasien, :nik, :address, :status)
    end

    def update_params
        params.permit(:id, :id_pasien, :id_dokter, :schedule, :end_schedule, :profile_pasien, :nik, :address, :status)
    end
end
