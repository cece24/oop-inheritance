class System
  @@bodies = []

  def self.add(body)
    @@bodies << body
  end

  def self.bodies
    @@bodies
  end

  def self.total_mass
    sum = 0
    @@bodies.each do |body|
      sum += body.mass
    end
    return sum

    # sum = @@bodies.reduce { |total, body| total + body.mass }
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

new_body = Body.new("Earth", 1.5)
another_body = Body.new("Mars", 2)

puts new_body.inspect
puts another_body.inspect

System.add(new_body)
System.add(another_body)
#

puts System.bodies.inspect
puts "Total mass is #{ System.total_mass }"
