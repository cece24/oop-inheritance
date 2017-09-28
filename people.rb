class Person

  def initialize(name)
    @name = name
  end

end

class Student < Person

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object"
  end

end

morty = Student.new("Morty")
rick = Instructor.new("Rick")

puts rick.teach
puts morty.learn
