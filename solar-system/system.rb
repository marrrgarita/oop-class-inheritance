require_relative 'bodies.rb'

class System

  def initialize
    @bodies = []
  end

  def add
    @bodies << body
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
