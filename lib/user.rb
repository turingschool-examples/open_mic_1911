class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(person, joke)
    person.jokes << joke
  end

  def joke_by_id(id)
    @jokes[-1 + id]
  end
end
