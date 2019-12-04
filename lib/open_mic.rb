class OpenMic
  attr_reader :location, :date, :performers

  def initialize(attributes)
    @location = attributes[:location]
    @date = attributes[:date]
    @performers = []
  end

  def welcome(person)
    @performers << person
  end

  def repeated_jokes?
    joke_id = []
    performers.each do |performer|
    require "pry"; binding.pry
      if performer.jokes == []
        false
      elsif
      performer.jokes.each do |joke|
        require "pry"; binding.pry
         joke_id << joke.id
      end
    end

   #performers.joke_by_id
  end
end
