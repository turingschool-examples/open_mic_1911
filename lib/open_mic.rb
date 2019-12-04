class OpenMic
  attr_reader :attr, :location, :date, :performers

  def initialize(attr = {})
    @attr = attr
    @location = attr[:location]
    @date = attr[:date]
    @performers = []
    # require "pry"; binding.pry
  end
end
