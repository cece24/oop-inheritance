class System
  @@bodies = []

  def self.add(body)
    @@bodies << body
  end

  def self.bodies
    @@bodies
  end

  def self.total_mass
    # sum = 0
    # @@bodies.each do |body|
    #   sum += body.mass
    # end
    # return sum

    sum = @@bodies.reduce(0) { |total, body| total + body.mass }
  end

end


class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end

end

# new_body = Body.new("Earth", 1.5)
# another_body = Body.new("Mars", 2)
#
# puts new_body.inspect
# puts another_body.inspect
#
# System.add(new_body)
# System.add(another_body)
#
# puts System.bodies.inspect
# puts "Total mass is #{ System.total_mass }"


class Planet < Body

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end


class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end


class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end

end

sun = Star.new("Sun", 16, "G-type")
earth = Planet.new("Earth", 5, 365, 5)
moon = Moon.new("Earth's Moon", 0.4, 5, earth)

System.add(sun)
System.add(earth)
System.add(moon)

puts "Total mass is : #{ System.total_mass }"
