#class file for Open Mic class

class OpenMic
  attr_reader :location, :date, :performers
  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(new_performer)
    @performers.push(new_performer)
  end

  def repeated_jokes?
    all_jokes = @performers.map do |user|
      user.jokes
    end
    if all_jokes.flatten.uniq! == nil
      false
    else
      true
    end
  end

end
