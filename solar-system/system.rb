require_relative 'bodies.rb'
require_relative 'stars.rb'
require_relative 'planets.rb'
require_relative 'moons.rb'


class System

  def initialize
    @bodies = []
  end

  def add(body)
    if @bodies.include?(body)
      puts "error"
    else
      @bodies << body
    end
  end

  def bodies
    @bodies
  end

  def total_mass
    mass = 0
    @bodies.each do |body|
      mass += body
    end
    return mass
  end
end

#create solar sytem
solar_system = System.new

# create sun, earth and moon
sun = Star.new("Sun", 400, "G-type")
earth = Planet.new("Earth", 300, 24, 365)
moon = Moon.new("Moon", 200, 4, "earth")

# add sun, earth and moon to solar system
solar_system.add(sun)
solar_system.add(earth)
solar_system.add(moon)

#view all bodies in solar system
puts solar_system.bodies

#test if statement in add method
solar_system.add(sun)
