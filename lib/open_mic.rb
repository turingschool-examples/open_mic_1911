class OpenMic

  attr_reader :location, :date, :performers

  def initialize(attributes)
    @location = attributes[:location]
    @date = attributes[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    jokes1 = @performers[0].jokes
    jokes2 = @performers[1].jokes
    if jokes1.include?(jokes2[0]) || jokes1.include?(jokes2[1])
      return true
    else
      return false
    end
  end
end
