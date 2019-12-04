class OpenMic
  attr_reader :location, :date, :performers

  def initialize(attributes)
    @location = attributes[:location]
    @date = attributes[:date]
    @performers = []
  end
end
