class User
# attr_reader :name
attr_accessor :jokes, :name

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name, joke)
    @jokes << joke
  end

  def joke_by_id(id)
    @joke_1 = id
    @joke_2 = id
  end
end
