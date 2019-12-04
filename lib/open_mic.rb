class OpenMic

  attr_reader :location, :date, :performers

  def initialize(location: "Comedy Works", date: "11-20-18")
    @location = location
    @date = date
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end
end
