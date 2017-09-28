require_relative "field"

class Wheat < Field

  DEFAULT_TYPE = "wheat"

  def initialize(size)
    @type = DEFAULT_TYPE
    super(size)
  end

end
