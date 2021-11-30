class GymsController < ApplicationController

    def show 
        gym = Gym.find(params[:id])
        render json: gym, status: :ok
        rescue ActiveRecord::RecordNotFound
        render json: {error: 'Not found'}, status: :not_found
        
    end

    def destroy 
        gym = Gym.find(params[:id])
        gym.destroy
        render json: {}, status: :ok
        rescue ActiveRecord::RecordNotFound
            render json: {error: "gym not found"}, status: :not_found
    end

    

end
