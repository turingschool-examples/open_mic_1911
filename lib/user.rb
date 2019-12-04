class User

  attr_reader :name, :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(tellee, joke)
    tellee.jokes << joke
  end

  def joke_by_id(id)
    @jokes.each do |joke|
      return joke if joke.id == id 
    end
  end
end
