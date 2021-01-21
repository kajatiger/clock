# frozen_string_literal: true

# Clock returns a string with the given hours and minutes
class Clock
  attr_accessor :hour, :minute, :base_time

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    @base_time = Time.new(2021, 'jan', 1, 0, 0)
  end

  def transformed_hour
    @hour += minute / 60 if minute >= 60

    if hour > 24
      hour % 24
    elsif hour.negative?
      24 - (hour * -1) % 24
    else
      hour
    end
  end

  def transformed_minute
    @minute = minute * -1 if minute.negative?
    minute < 60 ? minute : minute % 60
  end

  def to_s
    base_time.strftime('%H:%M')
  end
end
