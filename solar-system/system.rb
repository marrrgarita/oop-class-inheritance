require_relative 'bodies.rb'

class System

  @@bodies = []

  def add
    @@bodies << body
  end

  def total_mass
    mass = 0
    @@bodies.each do |body|
      mass += body
    end
    return mass
  end
end
