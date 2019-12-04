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
    performers_jokes = []
    @performers.each do |performer|
      performers_jokes << performer.jokes
    end
    performers_joke_id = []
    performers_jokes.flatten.each do |joke|
      performers_joke_id << joke.id
    end
    !(performers_joke_id.uniq.length == performers_joke_id.length)
  end

end