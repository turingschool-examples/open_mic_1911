class OpenMic
  attr_reader :info, :location, :date, :performers

  def initialize(info)
    @info = info
    @location = info[:location]
    @date = info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    joke_check = performers.uniq { |p| p.jokes}
    joke_check.length < 0 ? true : false
  end
end
