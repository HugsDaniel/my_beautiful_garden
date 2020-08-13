class PlantTagsController < ApplicationController
  def new
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end

  def create
    # Array de tag_ids
    # Pour chaque tag_id
    plant_tag_params[:tag_id].map do |tag_id|
      # Crée un plant_tag
      plant_tag = PlantTag.new(
        plant_id: params[:plant_id],
        tag_id: tag_id
      )

      plant_tag.save
    end

    @plant = Plant.find(params[:plant_id])
    redirect_to garden_path(@plant.garden)

    # @plant_tag = PlantTag.new(plant_tag_params)

    # @plant_tag.plant = @plant

    # if @plant_tag.save
    # else
    #   render :new
    # end

    # Lier un tag à une plante ==> créer un plant_tag
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(tag_id: [])
  end
end
