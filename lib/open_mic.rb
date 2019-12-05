class OpenMic
  attr_reader :location, :date, :performers
  def initialize(attributes)
    @location = attributes[:location]
    @date = attributes[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    ids = []
    performers.compact.each do |user|
      user.jokes.compact.each do |joke|
        ids << joke.id
      end
    end
    ids.uniq.length != ids.length
  end
end
