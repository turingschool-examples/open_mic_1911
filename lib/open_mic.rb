class OpenMic

  attr_reader :location, :date
  def initialize(info_hash)
    @location = info_hash[:location]
    @date = info_hash[:date]
  end
end
