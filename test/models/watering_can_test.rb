require "test_helper"

class WateringCanTest < ActiveSupport::TestCase
  include ActiveSupport::Testing::TimeHelpers

  setup do
    @user = users(:one)
  end

  test "ensure_for creates an empty can for a new user" do
    user = User.create!(name: "wc", email: "wc-#{SecureRandom.hex(4)}@example.com", password: "secret12", password_confirmation: "secret12")
    can = WateringCan.ensure_for(user)
    assert_equal 0, can.charges
    assert_nil can.last_filled
  end

  test "refill fills to max when empty and cooldown elapsed" do
    can = watering_cans(:two)
    can.update!(charges: 0, last_filled: 2.hours.ago)
    assert_equal [:ok], can.refill!
    can.reload
    assert_equal WateringCan::MAX_CHARGES, can.charges
    assert can.last_filled
  end

  test "refill is blocked while cooldown active after last fill" do
    can = watering_cans(:two)
    travel_to Time.zone.parse("2026-04-10 12:00:00") do
      can.update!(charges: 0, last_filled: 10.minutes.ago)
      result = can.refill!
      assert_equal :cooldown, result[0]
      assert result[1].positive?
    end
  end

  test "refill is blocked when can is not empty" do
    can = watering_cans(:one)
    assert_equal [:not_empty], can.refill!
  end
end
