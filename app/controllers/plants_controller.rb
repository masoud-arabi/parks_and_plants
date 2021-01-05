class PlantsController < ApplicationController

    def create
        @plant = Plant.new(plant_params)
        @garden = Garden.find(:garden_id)
        Plant.garden = @garden
        @plant.save

    end

    private

    def plant_params
        params.require(:plant).permit(:name, :image_url)
    end
end
