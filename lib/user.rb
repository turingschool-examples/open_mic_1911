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

  def joke_by_id(id_number)
    @jokes.find do |joke|
      joke.id == id_number
    end

  end

end
