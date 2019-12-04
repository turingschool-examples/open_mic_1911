class OpenMic
  attr_reader :location, :date

  def initialize(attributes)
    @location = attributes[:location]
    @date = attributes[:date]
  end
end
