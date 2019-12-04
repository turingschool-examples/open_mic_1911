class OpenMic

  attr_reader :location, :date, :performers

  def initialize(event_info)
    @event_info = event_info
    @location = event_info[:location]
    @date = event_info[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    all_jokes = []
    @performers.each do |performer|
      performer.jokes.each do |joke|
        all_jokes << joke
      end
    end
    if all_jokes.uniq == all_jokes
      false
    else
      true
    end
  end
end
