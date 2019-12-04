class OpenMic

  attr_reader :information, :location, :date, :performers, :repeated_jokes

  def initialize(information)
    @location = information[:location]
    @date = information[:date]
    @performers = []
    @repeated_jokes = false
  end

  def welcome(user)
    @performers << user
  end

  #couldn't get this one to pass the test...
  def repeated_jokes?
    if joke == 2
      @repeated_jokes = true
    else
      @repeated_jokes = false
    end
  end
end
