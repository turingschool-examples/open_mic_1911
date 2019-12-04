class User
  attr_reader :name, :jokes

  def initialize(name, jokes = [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    @jokes << joke
  end

end
