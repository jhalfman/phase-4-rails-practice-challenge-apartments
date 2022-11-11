class TenantsController < ApplicationController
    def index
        render json: Tenant.all
    end

    def show
        render json: Tenant.find(params[:id])
    end

    def create
        tenant = Tenant.create(name: params[:name], age: (params[:age]))
        render json: tenant
    end

    def update
        tenant = Tenant.find(params[:id])
        tenant.update(name: params[:name], age: (params[:age]))
        render json: tenant
    end

    def destroy
        Tenant.find(params[:id]).destroy
        render json: {}
    end
end
