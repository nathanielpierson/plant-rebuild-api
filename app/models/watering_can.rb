class WateringCan < ApplicationRecord
  belongs_to :user

  MAX_CHARGES = 20
  REFILL_COOLDOWN = 30.minutes

  validates :user_id, presence: true

  def self.ensure_for(user)
    find_or_create_by!(user_id: user.id) do |can|
      can.charges = 0
      can.last_filled = nil
    end
  end

  def can_refill?
    charges.to_i.zero? && cooldown_elapsed?
  end

  def seconds_until_refill
    return 0 unless charges.to_i.zero?

    seconds_until_refill_inner
  end

  def refill!
    return [:not_empty] unless charges.to_i.zero?
    return [:cooldown, seconds_until_refill_inner] unless cooldown_elapsed?

    update!(charges: MAX_CHARGES, last_filled: Time.current)
    [:ok]
  end

  private

  def cooldown_elapsed?
    last_filled.nil? || last_filled <= REFILL_COOLDOWN.ago
  end

  def seconds_until_refill_inner
    return 0 if cooldown_elapsed?

    [ (last_filled + REFILL_COOLDOWN - Time.current).ceil, 0 ].max
  end
end
