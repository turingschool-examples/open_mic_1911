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

  def duplicate_count(array) # researched online and found this. Tinkered with it
    #to work with my code but it is not mine.
    array.each_with_object(Hash.new(0)) do |value, hash|
      hash[value] += 1
    end.count do |(value,count)|
      count > 1
    end
  end

  def all_jokes
    all_jokes = comp.values
    all_jokes.flatten!
    all_jokes
  end

  def repeated_jokes?
    return true if duplicate_count(all_jokes) >= 1
    false
  end

end
