require_relative "planet"
require_relative "star"
require_relative "moon"

class System
  @@bodies = []

  def self.add(body)
    if @@bodies.include?(body)
      puts "This body already exists in the system!"
    else
      puts "The new body #{body.name} has been added!"
      @@bodies << body
    end
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

sun = Star.new("Sun", 16, "G-type")
earth = Planet.new("Earth", 5, 365, 5)
moon = Moon.new("Earth's Moon", 0.4, 5, earth)

System.add(sun)
System.add(earth)
System.add(moon)
System.add(moon)

puts System.bodies.inspect

puts "Total mass is : #{ System.total_mass }"
