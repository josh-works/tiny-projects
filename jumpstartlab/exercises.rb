# exercises w/new car
module Explodable
  def blow_up
    puts "kablooie!"
  end
end

module Towable
  def can_tow
    tow_capability = false
    puts "how heavy is the vehicle?"
    weight = gets.chomp.to_i
    if weight < 2000
      puts "cannot tow"
    else
      puts "can tow"
      tow_capability = true
    end
  end
end


class Vehicle
@@vehicle_count = 0
  def initialize
    @@vehicle_count += 1
    puts "the Vehicle class has #{@@vehicle_count} objects"
  end


  def self.mpg(gallons, miles)
    puts "your vehicle's mpg: #{miles / gallons}"
  end

end


class MyCar < Vehicle
  include Explodable
  DOORS_COUNT = 4
end

class MyTruck < Vehicle
  include Towable
  DOORS_COUNT = 2
end
