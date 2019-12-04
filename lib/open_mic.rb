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


    # Wondering if there might be a cleaner way to test for repeating jokes. I tried to look up some possible enumerables but wasn't having much luck, although I'm sure there is a way. Let me know what you think!
    if jokes_array.uniq.length < jokes_array.length
      true
    else
      false
    end
  end

end
