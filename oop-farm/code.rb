require_relative "farm"
require_relative "field"
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
    puts "relax -> provides lovely descriptions of your fields"
    puts "exit -> exits the program"
  end

  def call_option(user_selection)
    case user_selection
    when "field" then add_field
    when "exit" then exit
  end

  def add_field
    puts "What kind of field is it: corn or wheat?"
    field_type = gets.chomp

    puts "How large is the field in hectares?"
    field_size = gets.to_i

    new_field = Field.create(field_type, field_size)
    puts "Added a #{ field_type } field of #{ field_size } hectares!"
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
