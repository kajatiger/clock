# frozen_string_literal: true

# Clock returns a string with the given hours and minutes
class Clock
  attr_accessor :hour, :minute, :base_time

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    hour_in_minutes = hour * 60
    minutes = hour_in_minutes + minute
    seconds = minutes * 60
    @base_time = Time.new(2021, 'jan', 1, 0, 0)
    @base_time += seconds
  end

  def +(other)
    hour_in_minutes = other.hour * 60
    minutes = hour_in_minutes + other.minute
    seconds = minutes * 60
    @base_time += seconds
    base_time.strftime('%H:%M')
  end

  def -(other)
    hour_in_minutes = other.hour * 60
    minutes = hour_in_minutes + other.minute
    seconds = minutes * 60
    @base_time -= seconds
    base_time.strftime('%H:%M')
  end

  def ==(other)
    other.base_time.hour == base_time.hour && other.base_time.min == base_time.min
  end

  def to_s
    base_time.strftime('%H:%M')
  end
end
