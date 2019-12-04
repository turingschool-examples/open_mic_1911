class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(new_joke)
    @jokes << new_joke
  end

end
