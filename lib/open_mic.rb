class OpenMic
  attr_reader :location, :date, :performers
  def initialize(info)
    @info = info
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    joke_ids = []
    @performers.each do |performer|
      performer.jokes.each { |joke| joke_ids << joke.id }
    end
    return (joke_ids.count != joke_ids.uniq.count)

  end
end
