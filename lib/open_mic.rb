class OpenMic
  attr_reader :location, :date, :performers
  def initialize(location:, date:)
    @location = location
    @date = date
    @performers = []
  end

  def welcome(user)
    @performers << (user)
  end

  def repeated_jokes?
    

  end
end
