class OpenMic
  attr_reader :char_params, :performers

  def initialize(char_params)
    @location = char_params[:location]
    @date = char_params[:date]
    @performers = []
  end

  def location
    @location
  end

  def date
    @date
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    r_joke = @performers.map do |performer|
      performer.jokes.any? do |joke|
        joke == joke
      end
    end
    r_joke.first
  end

end
