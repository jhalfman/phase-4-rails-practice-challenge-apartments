class ApartmentsController < ApplicationController
    #:create, :destroy, :index, :show, :update
    def index
        render json: Apartment.all
    end

    def show
        render json: Apartment.find(params[:id])
    end

    def create
        apartment = Apartment.create(number: params[:number])
        render json: apartment
    end

    def update
        apartment = Apartment.find(params[:id])
        apartment.update(number: params[:number])
        render json: apartment
    end

    def destroy
        Apartment.find(params[:id]).destroy
        render json: {}
    end
end
