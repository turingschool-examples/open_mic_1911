class User

  attr_reader :name, :jokes, :joke

  def initialize(name)
    @name = name
    @jokes = []
    @joke = joke

  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name, joke)
    name.learn(joke)
  end
  # I have tried to work this one out in several
  # ways, but I cannot figure it out, so I am moving on.
  # def joke_by_id(new_id)
  #   if @joke.id == new_id
  #     return joke
  #   end
  # end
end
