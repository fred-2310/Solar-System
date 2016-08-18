class Planet
  attr_accessor :name, :color, :life, :moons, :length_of_day, :distance_from_sun

  # the order of parameters is as they appear. This is important and seems unadvised
  # to just not tell the person using this code. Oh, and params is an array. Yeah.
  def initialize (params)
    @name = params[0]
    @color = params[1]
    @life = params[2]
    @moons = params[3]
    @length_of_day = params[4]
    @distance_from_sun = params [5]
  end

  #Output information
  def display_planet
    puts "
    Planet: #{@name}
    Color: #{@color}
    Moons: #{@moons}
    Life: #{@life}
    Length of day: #{@length_of_day}
    Distance from sun in miles: #{distance_from_sun}
    "
  end

end
