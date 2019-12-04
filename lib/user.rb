class User

  attr_reader :name
  attr_accessor :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(listener, joke)
    listener.jokes << joke
  end

  def joke_by_id(id)
    jokes.each do |joke|
      if joke.id == id
        return joke
      end
    end
  end
end
