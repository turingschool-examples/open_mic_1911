class User

  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(jokester, joke)
    jokester.learn(joke)
  end

  def joke_by_id(id)
    @jokes.find do |joke|
      joke.id == id
    end
  end

  def repeated_jokes?

  end
end
