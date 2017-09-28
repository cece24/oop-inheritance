require_relative "multilinguist"

class MathGenius < Multilinguist

  def report_total(list_of_numbers)
    sum = list_of_numbers.reduce(:+)
    puts say_in_local_language("The total is #{ sum }")
  end

end

jordan = MathGenius.new

lots_of_numbers = [ 340, 540, 230, 450, 456, 67, 23, 796, 234 ]

jordan.report_total(lots_of_numbers)

jordan.travel_to("Japan")
jordan.report_total(lots_of_numbers)

jordan.travel_to("Iceland")
jordan.report_total(lots_of_numbers)

jordan.travel_to("Algeria")
jordan.report_total(lots_of_numbers)
