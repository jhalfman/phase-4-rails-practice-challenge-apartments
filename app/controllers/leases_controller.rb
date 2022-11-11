class LeasesController < ApplicationController
    def create
        lease = Lease.create!(rent: params[:rent], tenant_id: params[:tenant_id], apartment_id: params[:apartment_id])
        render json: lease
    rescue ActiveRecord::RecordInvalid => invalid
        render json: invalid
    end

    def destroy
        Lease.find(params[:id]).destroy
        render json: {}, status: :ok
    end
    
end
