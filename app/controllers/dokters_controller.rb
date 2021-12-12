class DoktersController < ApplicationController
    before_action :authorized, only: [:auto_login]

    def show
        doctor = Dokter.all
        render json: doctor, status: :ok
    end
end
