#class file for User File

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes.push(joke)
  end

  def tell(to_user, joke)
    to_user.learn(joke)
  end

  def joke_by_id(id)
    @jokes.find { |joke| joke.id == id}
  end

end
