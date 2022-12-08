class HerosController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Hero.all, status: :ok
    end

    def show 
        render json: Hero.find(params[:id])
    end

    private
    def hero_params
        params.permit(:name, :super_name)
    end
end
