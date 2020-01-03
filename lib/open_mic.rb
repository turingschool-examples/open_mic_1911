class OpenMic
  attr_reader :location, :date, :performers

  def initialize(openmic_info)
    @location = openmic_info[:location]
    @date = openmic_info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    jokes = @performers.map {|user| user.jokes}.flatten
    if jokes.uniq! == nil
      false
    else
      true
    end
  end
end
