class ListdoktersController < ApplicationController
    before_action :authorized, only: [:auto_login]

    def show
        listdoctor = Listdokter.all
        render json: listdoctor, status: :ok
    end
end
