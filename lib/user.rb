class User
  attr_reader :name, :jokes

  def initialize(name, jokes = [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
  end

  def joke_by_id(id)
    # require "pry"; binding.pry
    [@jokes.find do |joke|
      joke.id == id
    end]
  end

end
