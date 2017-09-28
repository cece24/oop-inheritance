require_relative "field"

class Corn < Field

  DEFAULT_TYPE = "corn"

  def initialize(size)
    @type = DEFAULT_TYPE
    super(size)
  end

end
