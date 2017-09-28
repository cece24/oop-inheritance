class Person

  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{ @name }!"
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object"
  end

end

morty = Student.new("Morty")
rick = Instructor.new("Rick")

rick.teach
morty.learn

rick.greeting
morty.greeting

nadia = Instructor.new("Nadia")
nadia.greeting

chris = Student.new("Chris")
chris.greeting

nadia.teach
chris.learn
# chris.teach <= this does not work because .teach is a method
# defined for instructors, not for students
# instructors and students are separate classes and do not inherit
# anything from each other
# if Person has a method called teach, then this would work
