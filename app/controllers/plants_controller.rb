class PlantsController < ApplicationController
  def create
    garden = Garden.find(params[:garden_id])
    plant = Plant.new(plant_params)
    plant.garden = garden
    plant.save
    redirect_to garden_path(garden)
  end

  def destroy
    plant = Plant.find(params[:id])
    redirect_to garden_path(plant.garden)

    plant.delete
  end

private

  def plant_params
    params.require(:plant).permit([:name, :image_url])
  end
end
