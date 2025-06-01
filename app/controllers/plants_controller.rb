# days_to_water is a static number that represents the time gap between needing to water a specific plant
# growth_req is a static number that represents the base amount of times you need to water the plant until it is fully grown

class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    render :index
  end
  def show
    @plant = Plant.find_by(id: params[:id])
    render :show
  end
  def update
    @plant = Plant.find_by(id: params[:id])
    @plant.update(
      name: params[:name] || @plant.name,
      description: params[:description] || @plant.description,
      amount_of_sun: params[:amount_of_sun] || @plant.amount_of_sun,
      days_to_water: params[:days_to_water] || @plant.days_to_water,
      growth_req: params[:growth_req] || @plant.growth_req
    )
    render :show
  end
end
