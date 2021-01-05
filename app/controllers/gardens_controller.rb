class GardensController < ApplicationController
    
    def index
        @gardens = Garden.all
    end

    def show
       #  s @garden = Garden.find(params[:id])
        @plant = Plants.new
    end
end
