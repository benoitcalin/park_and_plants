class PlantTagsController < ApplicationController
  def new
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end

  # Association
  # def create
  #   # Récupérer une instance de plante
  #   @plant = Plant.find(params[:plant_id])
  #   # Récupérer une instance de tag
  #   @tag = Tag.find(params[:plant_tag][:tag_id])
  #   # Créer un PlantTag
  #   @plant_tag = PlantTag.new(plant: @plant, tag: @tag)
  #   if @plant_tag.save
  #     redirect_to garden_path(@plant.garden)
  #   else
  #     render :new
  #   end
  # end

  # Collection
  def create
    # Récupérer une instance de plante
    @plant = Plant.find(params[:plant_id])

    # Créer un PlantTag
    params[:plant_tag][:tag].each do |tag_id|
      # Récupérer une instance de tag
      @tag = Tag.find(tag_id)
      @plant_tag = PlantTag.new(plant: @plant, tag: @tag)
      @plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end
end
