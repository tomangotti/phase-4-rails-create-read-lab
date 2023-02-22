class PlantController < ApplicationController
    wrap_parameters format: []

    #get "/plants"
    def index
        plants = Plant.all
        render json: plants
    end

    #get "/plants/:id"
    def show
        plant = Plant.find(params[:id])
        render json: plant
    end

    #post "/plants"
    def create
        
        plant = Plant.create(params.permit(:name, :image, :price))
        render json: plant, status: :created
    end
end
