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
    performers_joke_id = []
    @performers.each do |performer|
      performers_joke_id << performer.jokes_id 
    end
    (performers_joke_id.flatten.uniq.length != performers_joke_id.flatten.length)
  end

  def repeated_jokes_beta?
    # sorry it's not very elegant but I can't think straight :(
    performers_jokes = []
    @performers.each do |performer|
      performers_jokes << performer.jokes
    end
    performers_joke_id = []
    performers_jokes.flatten.each do |joke|
      performers_joke_id << joke.id
    end
    (performers_joke_id.uniq.length != performers_joke_id.length)
  end

end