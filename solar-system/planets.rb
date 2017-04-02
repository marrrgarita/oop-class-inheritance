require_relative 'bodies.rb'

class Planet < Body

attr_reader :name, :mass, :day, :year

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end
