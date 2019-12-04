class OpenMic
  attr_reader :location, :date
  attr_accessor :performers

  def initialize(data)
    @location = data[:location]
    @date = data[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    the_jokes = []
    @performers.each do |performer|
      performer.jokes.each do |joke|
        the_jokes << joke.id
      end
    end
    if the_jokes.uniq.length == the_jokes.length
      false
    else
      true
    end
  end
end
