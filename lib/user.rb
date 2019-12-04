class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
    joke
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id)
    @jokes.select { |j| return j if j.id == id}
  end
end
