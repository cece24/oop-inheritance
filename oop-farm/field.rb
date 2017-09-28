class Field
  @@fields = []

  def initialize(type, size)
    @type = type
    @size = size
  end

  def self.create(type, size)
    new_field = Field.new(type, size)
    @@fields <<  new_field
    return new_field
  end

end
