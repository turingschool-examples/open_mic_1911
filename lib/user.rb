class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke_name)
    @jokes << joke_name
  end

  def tell(user, joke_name)
    user.learn(joke_name)
  end


end
