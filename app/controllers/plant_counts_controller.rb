class PlantCountsController < ApplicationController
  def index
    @plant_counts = current_user.plant_counts
    render :index
  end
  def update
    user = current_user.id
    users_plants = PlantCount.where(user_id: user)
    y = 0
    while y < users_plants.length
      @plant_count = users_plants[y]
      # finds every instance of a schedule for this plant that is under the current user, i.e. all of current user's planted cabbages
      if @plant_count.plant_id != nil
        plant = Schedule.where(plant_id: @plant_count.plant_id, user_id: current_user, status: false)
        x = plant.length
        @plant_count.update(
          user_id: params[:user_id] || @plant_count.user_id,
          plant_id: params[:plant_id] || @plant_count.plant_id,
          count_growing: x
          )
        p users_plants
        p "users_plants dot length"
        p users_plants.length
      end
      y += 1
    end
    render :show
  end
  def update_all
    user = User.last
    x = 0
    while x <= user.id
      fetch_user = User.find_by(id: x)
      if fetch_user != nil
        p fetch_user.name
      end
      p x
      x += 1
    end
  end
  def create
    user = User.last
    x = 0
    while x <= user.id
      fetch_user = User.find_by(id: x)
      if fetch_user != nil
        plant = Plant.last
        y = 0
        while y <= plant.id
          fetch_plant = Plant.find_by(id: y)
          already_exist = PlantCount.where(user_id: x, plant_id: y)
          if fetch_plant != nil && already_exist == []
          @plant_count = PlantCount.create(
            user_id: x,
            plant_id: y,
            count_finished: Schedule.where(plant_id: y, user_id: x, status: true).length,
            count_growing: Schedule.where(plant_id: y, user_id: x, status: false).length
          )
          end
        y += 1
        end
      end
      p x
      x += 1
    end
  end
end
