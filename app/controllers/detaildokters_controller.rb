class DetaildoktersController < ApplicationController
    before_action :authorized, only: [:auto_login]

    def show
        detaildoctor = Detaildokter.all
        render json: detaildoctor, status: :ok
    end
end
