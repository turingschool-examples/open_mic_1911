class User
  attr_reader :name, :jokes, :id

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(new_joke)
    @jokes << new_joke
  end

  def tell(audience, joke)
    audience.jokes << joke
  end

  def joke_by_id(index)
    #>>>need interate over array to return joke associated with @id from Joke<<<
    # require "pry"; binding.pry
    # @jokes.id
    # jokes[index - 1]
    if jokes[index - 1].id == index
      jokes[index - 1]
    end

    #need interate over array to return joke associated with @id from Joke
  end

end
