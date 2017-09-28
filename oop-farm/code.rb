require_relative "field"
require_relative "corn"
require_relative "wheat"

class FarmApp

  def main_menu
    while true
      print_main_menu
      user_selection = gets.chomp
      call_option(user_selection)
    end
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
    when "harvest" then harvest_farm
    when "status" then farm_status
    when "exit" then exit
    end
  end

  def add_field
    valid_field = false

    while valid_field == false
      puts "What kind of field is it: corn or wheat?"
      field_type = gets.chomp

      if field_type == "corn" || field_type == "wheat"
        valid_field = true
      else
        puts "Invalid field type, please try again!"
      end
    end

    puts "How large is the field in hectares?"
    field_size = gets.to_i

    new_field = Field.create(field_type, field_size)
    puts "Added a #{ field_type } field of #{ field_size } hectares!"
  end

  def harvest_farm
    Field.harvest_fields

    puts "The farm has #{ Field.total_harvest } harvested food so far."
  end

  def farm_status
    # lists all the fields
    Field.all.each do |field|
      puts "#{ field.type } field is #{ field.size } hectares."
    end
    # puts total food produced by farm
    puts "The farm has #{ Field.total_harvest } harvested food so far."
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
