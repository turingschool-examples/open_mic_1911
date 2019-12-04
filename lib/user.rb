# Creates a user that can take in and say jokes
#     User has a name and uses an array to store jokes

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes.push(joke)
  end

  def tell(name, joke)
    name.learn(joke)
  end

end