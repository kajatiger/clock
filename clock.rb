# frozen_string_literal: true

# Clock returns a string with the given hours and minutes
class Clock
  attr_accessor :hour, :minute #, :base_time

  def initialize(hour: 0, minute: 0)
    @hour = hour
    @minute = minute
    # @base_time = Time.new(2021, 'jan', 1, 0, 0)
    # @base_time += in_seconds(hour, minute)
  end

  # def +(other)
  #   first_base_time = base_time
  #   first_base_time += in_seconds(other.hour, other.minute)
  #   first_base_time.strftime('%H:%M')
  # end

  # def -(other)
  #   first_base_time = base_time
  #   first_base_time -= in_seconds(other.hour, other.minute)
  #   first_base_time.strftime('%H:%M')
  # end

  # def ==(other)
  #   other.base_time.hour == base_time.hour && other.base_time.min == base_time.min
  # end

  def in_seconds(hour, minute)
    hour_in_minutes = hour * 60
    minutes = hour_in_minutes + minute
    minutes * 60
  end

  def to_s
    "#{hour}:#{minute}"
    # base_time.strftime('%H:%M')
  end
end
