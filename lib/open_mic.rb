class OpenMic
  attr_reader :details, :location, :date, :performers, :known_jokes, :repeated_jokes

  def initialize(details)
    @details = details
    @location = details[:location]
    @date = details[:date]
    @performers = []
    @known_jokes = []
    @repeated_jokes = 0
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    @performers.each do |performer|
      performer.jokes.each do |joke|
        if @known_jokes.include?(joke) == false
          @known_jokes << joke
        else
          @repeated_jokes += 1
        end
      end
    end

    true if @repeated_jokes > 0
    false
  end
end
