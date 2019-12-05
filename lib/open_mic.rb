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

  def repeated_jokes?
    @performers[1].jokes.include?(@performers[0].jokes[0])
    # require "pry"; binding.pry
  end
end
