class OpenMic

  attr_reader :location, :date, :performers
  def initialize(info_hash)
    @location = info_hash[:location]
    @date = info_hash[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end
end
