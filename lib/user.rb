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
end
