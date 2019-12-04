class OpenMic
  attr_reader :attr, :location, :date, :performers, :comp

  def initialize(attr = {})
    @attr = attr
    @location = attr[:location]
    @date = attr[:date]
    @performers = []
    @comp = {}
    # require "pry"; binding.pry
  end

  def welcome(user)
    @performers << user
    @comp["#{user.name} jokes"] = [] if comp[user.name].nil?
    @comp["#{user.name} jokes"] << user.jokes
  end

  def repeated_jokes?
    require "pry"; binding.pry
  end

end
