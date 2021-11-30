class ClientsController < ApplicationController
    def show 
        client = Client.find(params[:id])
        render json: client, status: :ok
        rescue ActiveRecord::RecordNotFound
            render json: errors, status: :not_found
            
    end
end
