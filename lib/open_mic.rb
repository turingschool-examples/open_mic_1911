class OpenMic
  def initialize(open_mic_info)
    @location = open_mic_info[:location]
    @date = open_mic_info[:date]
    @performers = []
  end
end