require_relative 'planet'

class SolarSystem

  attr_accessor :planets

  def initialize
    @planets = []
  end

  # Adds a single planet.
  def add_planet (planet)
    @planets << planet
  end

  # Adds a planet list.
  def add_planet_list (planet_list)
    @planets += planet_list
  end

  # Output planet information.
  def display_system
    puts "These are the planets in this solar system:"
    @planets.each do |planet|
      puts "Planet Data:"
      planet.display_planet
    end
  end

  # This method will calculate the distance of two Planets from each other.
  # Input is two Planet objects; output is a fixnum.
  def distance_from_other (planet_one, planet_two)
    # Get each planet's distance_from_sun
    dist_one = planet_one.distance_from_sun.to_i
    dist_two = planet_two.distance_from_sun.to_i
    # Calculate difference; return absolute value of difference
    dist = dist_one - dist_two
    if dist < 0
      return -dist
    else
      return dist
    end
  end

end

sol = SolarSystem.new
# my_planet = Planet.new(["Earth", "blue", "yes", "the Moon", "24hrs", "92.96 million miles"])
# sol.add_planet(my_planet)
inner_planets = [
  Planet.new(["Earth", "blue", "yes", "the Moon", "24hrs", "92960000"]),
  Planet.new(["Mercury", "gray", "no", "none", "58 days and 15.5 hours", "35980000"]),
  Planet.new(["Venus", "eggshell", "no", "none", "116 days and 18 hours", "67240000"]),
  Planet.new(["Mars", "red", "no", " Phobos, Deimos", "24 hours and 40 minutes", "141600000"]),
  Planet.new(["Fantasia", "rainbow", "yes", "Luna, Pie", "25 hours", "124000000"])
]
# Add a list of planets to out solar system
sol.add_planet_list(inner_planets)

outer_planets = [
  Planet.new(["Jupiter", "brown", "no", "Europa, Ganymede, Io, Callisto, Amalthea,
  Pasiphae", "9 hours and 56 minutes", "483800000"]),
  Planet.new(["Saturn", "beige", "no", "Titan, Enceladus, Mimas, Tethys, Rhea,
    Iapetus, Dione", "10 hours and 42 minutes", "888200000"]),
  Planet.new(["Uranus", "blue-gray", "no", "Miranda, Titania, Ariel, Oberon, Umbriel, Puck, Portia",
    "17 hours and 14 minutes", "1787000000"]),
  Planet.new(["Neptune", "blue", "no", "Triton, Proteus, Nereid, Larissa, Naiad,
    Despina, Thalassa, Galatea, Neso, Halimede, S/2004 N 1, Psamathe, Sao, Laomedeia",
    "16 hours and 6 minutes", "2795000000"])
]
# Add moar planets!
sol.add_planet_list(outer_planets)

# Hey we found a new planet!
new_planet = Planet.new(["Awesome", "pink", "yes", "Purple Haze, Margarita, Cotton Candy",
   "36 hours", "400000000000"])
sol.add_planet(new_planet)
sol.display_system

# Now calculate distance between some planets
one = sol.planets[0]
two = sol.planets[1]
puts "The distance between #{one.name} and #{two.name} is: #{sol.distance_from_other(one, two)} miles"
