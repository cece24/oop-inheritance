require_relative "corn"
require_relative "wheat"

class FarmApp

  def main_menu
    print_main_menu
    user_selection = gets.chomp
    call_option(user_selection)
  end

  def print_main_menu
    puts "Options:"
    puts "field -> adds a new field"
    puts "harvest -> harvest crops and adds to total harvested"
    puts "status -> displays some information about the farm"
    puts "relax -> provdes lovely descriptions of your fields"
    puts "exit -> exits the program"
  end

  def call_option(user_selection)

  end

end

new_app = FarmApp.new

new_app.main_menu

# fields
# different types of fields, corn and wheat
# these two types have a default value for food/hectare
# Corn and Wheat class, inherit from field class
# class of Fields, instances of different fields

#Specific to each Fields
# type of field
# food produced per hectare

#Common to all Fields
# hectare variable
# food_produced method



# harvest - total food produced across all fields
# could be a Field class variable or method
#
