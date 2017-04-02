require_relative 'bodies.rb'
require_relative 'planets.rb'

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end


end
