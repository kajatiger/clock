# frozen_string_literal: true

# Clock returns a string with the given hours and minutes
class Clock
  attr_accessor :hour, :minute, :base_time

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    @base_time = Time.new(2021, 'jan', 1, 0, 0)
  end

  def to_s
    hour_in_minutes = hour * 60
    minutes = hour_in_minutes + minute
    seconds = minutes * 60
    @base_time += seconds
    base_time.strftime('%H:%M')
  end
end
