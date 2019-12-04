class OpenMic
  attr_reader :location, :date, :performers

  def initialize(open_mic_info)
    @location = open_mic_info[:location]
    @date = open_mic_info[:date]
    @performers = []
  end

  def welcome(performer_name)
    @performers.push(performer_name)
  end
end