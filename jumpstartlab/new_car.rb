# new_car.rb

module Exploding
  def blow_up
    puts "kablooie from #{self}"
  end
end


class Vehicle

  attr_accessor :year, :color, :model

  @@vehicle_count = 0
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
    @@vehicle_count += 1

    puts @@vehicle_count
  end

  def mpg(gal, miles)
    puts "your mpg is #{miles / gal}"
  end

  def speed_up(mph)
    @speed += mph
  end

  def speed_down(mph)
    @speed -= mph
  end

  def stop()
    @speed = 0
    puts "screeeeech. your speed is #{@speed}"
  end

  def spraypaint(color)
    @color = color
  end

  def current_speed()
    "you are now going #{@speed} mph."
  end








end

class MyCar < Vehicle
  DOOR_COUNT = 4

def age
  puts "your #{self.model} is #{years_old} years old"
end

  private

  def years_old
    this_year = Time.new.year
    vehicle_year = self.year
    age = this_year - vehicle_year
    age
  end

end

class MyTruck < Vehicle
  include Exploding
  DOOR_COUNT = 2
end
