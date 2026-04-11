include ActionView::Helpers::DateHelper

class SchedulesController < ApplicationController
  def index
    @schedules = current_user.schedules.where(status: false)
    render :index
  rescue NoMethodError
    @schedules = []
  end

  def show
    @schedule = Schedule.find_by(id: params[:id])
    render :show
  end

  def show_of_plant
    @schedules = Schedule.where(plant_id: params[:plant_id], status: false, user_id: current_user.id)
    render :index
  end

  def create
    @schedule = Schedule.new(
    plant_id: params[:plant_id],
    user_id: current_user.id,
    growth_status: 0,
    status: false
    )
    @schedule.save
    @schedule.update(
      last_watered_date: @schedule.created_at
    )
    render :show
  end

  def update
    x = 0
    while x < Schedule.last.id + 1
      if Schedule.find_by(id: x) != nil
        @schedule = Schedule.find_by(id: x)
        @schedule.update(
          time_changed: (Date.current - Date.parse(@schedule.last_watered_date.to_s)).to_i * 24
          )
      end
        x += 1
    end
    render :show
  end

  def water
    unless current_user
      render json: {}, status: :unauthorized
      return
    end

    @schedule = Schedule.find_by(id: params[:id])
    unless @schedule&.user_id == current_user.id
      render json: { error: "Schedule not found" }, status: :not_found
      return
    end

    @empty_can = false
    ActiveRecord::Base.transaction do
      can = WateringCan.ensure_for(current_user)
      can.lock!
      if can.charges.to_i < 1
        @empty_can = true
        raise ActiveRecord::Rollback
      end
      can.update!(charges: can.charges - 1)

      new_growth = @schedule.growth_status + 1
      plant_req = @schedule.plant.growth_req
      attrs = {
        last_watered_date: Date.today,
        growth_status: new_growth
      }
      attrs[:status] = true if new_growth >= plant_req
      @schedule.update!(attrs)
    end

    if @empty_can
      can = WateringCan.ensure_for(current_user)
      render json: {
        error: "Your watering can is empty. Refill when your cooldown allows (empty can only).",
        charges: can.charges,
        seconds_until_refill: can.seconds_until_refill,
        can_refill: can.can_refill?
      }, status: :unprocessable_entity
      return
    end

    @schedule.reload
    render :show
  end

  def delete
    schedule = Schedule.find_by(id: params[:id])
    schedule.delete
    render json: "schedule deleted"
  end

  def reset
    # for testing; resets all schedules to have been last watered a very long time ago. May not be useful anymore but worth keeping until I'm sure.
    @schedules = Schedule.all
    @schedules.update(
    last_watered_date: "2000-01-01 00:00:00",
    time_changed: (Date.current - Date.parse("2000-01-01")).to_i
      )
  end
  def count
    # the amount of the specified plant (in request after "count/") that are active (not finished growing)
    p "there are #{Schedule.where(plant_id: params[:plant_id], status: false).length} active #{Plant.find_by(id: params[:plant_id]).name} schedules"
    render :show
  end
end
