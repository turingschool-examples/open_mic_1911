class OpenMic
  attr_reader :location, :date, :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
    @performers_jokes = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
      @performers.each do |performer|
    @performers_jokes = @performers.users.jokes.id
  end














end
