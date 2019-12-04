class OpenMic
attr_reader :location,
            :date,
            :performers

  def initialize(information)
    @location = information[:location]
    @date = information[:date]
    @performers = []
  end

  def welcome(user)
    performers << user
  end

  def jokes
    all_jokes = []
    @performers.each do |performer|
      all_jokes << performer.jokes
    end.flatten
    all_jokes
  end

  def repeated_jokes?
    #method should return false if they are the only performer with
    # that joke in their jokes array.
    #true if there are any jokes with the same id for any of the performers
    joke_id = []
    jokes.each do |joke|
      joke_id << joke.id
      end
    #blah blah blah 
    end
  end
end
