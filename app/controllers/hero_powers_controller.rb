class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def create
        hero_power = HeroPower.create!(hero_power_params)
        hero = Hero.find(hero_power.heroe_id)
        render json: hero, serializer: EachHeroPowerSerializer, status: :created
    end

    private
    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
