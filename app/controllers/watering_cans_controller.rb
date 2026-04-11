class WateringCansController < ApplicationController
  before_action :authenticate_user

  def show
    @watering_can = WateringCan.ensure_for(current_user)
    render :show
  end

  def refill
    can = WateringCan.ensure_for(current_user)
    result = can.refill!
    case result[0]
    when :ok
      @watering_can = can.reload
      render :show
    when :not_empty
      render json: {
        error: "Watering can must be empty before you can refill.",
        charges: can.charges
      }, status: :unprocessable_entity
    when :cooldown
      render json: {
        error: "Refill is on cooldown.",
        seconds_until_refill: result[1],
        charges: can.charges
      }, status: :unprocessable_entity
    end
  end
end
