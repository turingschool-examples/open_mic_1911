class OpenMic

  attr_reader :location, :date, :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    jokes_array = @performers.map do |user|
      user.jokes
    end.flatten

    if jokes_array.uniq.length < jokes_array.length
      true
    else
      false
    end
  end

end
