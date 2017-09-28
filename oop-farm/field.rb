class Field
  @@fields = []
  @@total_harvest = 0

  def initialize(type, size)
    @type = type
    @size = size
  end

  def self.create(type, size)
    new_field = Field.new(type, size)
    @@fields <<  new_field
    return new_field
  end

  def self.harvest_fields
    @@fields.each do |field|
      @@total_harvest += field.food_produced
      puts "Harvesting #{ field.food_produced } from #{ field.size } hectare #{ field.type } field."
    end
  end

  def self.total_harvest
    @@total_harvest
  end

  def food_produced
    if self.type == "corn"
      food_produced = @size * 20
    else
      food_produced = @size * 30
    end
    return food_produced
  end

  def self.all
    @@fields
  end

  def type
    @type
  end

  def size
    @size
  end

end
