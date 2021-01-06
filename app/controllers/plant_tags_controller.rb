class PlantTagsController < ApplicationController

    def new
        @plant = Plant.find(params[:plant_id])
        @plant_tag = PlantTag.new
    end
    
    def create
        @plant = Plant.find(params[:plant_id])
        @plant_tag = PlantTag.new(params.require(:plant_tag).permit(:tag_id))
        @plant_tag.plant = @plant
        if @plant_tag.save
            redirect_to garden_path(@plant.garden)
        else 
            render :new
        end
    end

    
end
