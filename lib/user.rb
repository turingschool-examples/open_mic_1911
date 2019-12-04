class User
  attr_reader :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke_name)
    @jokes << joke_name
  end

end
