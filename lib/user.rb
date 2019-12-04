class User

  attr_reader :name, :jokes, :learn
  def initialize(name, jokes = [])
    @name = name
    @jokes = []
  end

  def learn(joke_1)
    @jokes << joke_1 

  end


end
