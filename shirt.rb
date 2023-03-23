class Shirt
  def initialize(size, color)
    @size = size
    @color = color
  end

  def print_info
    p "the #{color} shirt is a #{size}."
  end

  def color
    @color
  end
end

shirt1 = Shirt.new("M", "green")
p shirt1.color




#Use inheritance to DRY up the classes
#Brake, Accelerate, and Turn 

class Vehicle 
  def initialize
    @speed = 0
    @direction = north
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end


  def ring_bell
    puts "Ring ring!"
  end
end

car = Car.new
bike = Bike.new

puts car.accelerate
puts bike.accelerate
puts bike.ring_bell
