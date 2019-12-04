require 'pry'
class OpenMic
  attr_reader :location, :date, :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
    @performers_jokes = []
    @performers_joke_id = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    @performers.each do |performer|
      @performers_jokes += performer.jokes
    end
    @performers_jokes.each do |joke|
      @performers_joke_id << joke.id
    end
    #   return false if @performers_jokes_id.uniq? == true
    #    true
    # end
  end
end






  # @performers.each do |performer|
  # @performers_jokes = @performers.user.jokes
