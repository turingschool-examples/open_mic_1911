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

  def repeated_jokes?
    performed_jokes = performers.map do |performer|
      performer.jokes
    end

    @performers.each do |performer|
      # require 'pry'; binding.pry
      performed_jokes.each do |joke|
        if performed_jokes.find(joke) == nil
          return false
        else
          return true
        end
      end
    end
  end

end