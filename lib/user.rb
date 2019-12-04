class User
  attr_reader :name
  attr_accessor :jokes
  def initialize (name)
    @name = name
    @jokes = []
  end

  def jokes(joke)
    jokes << joke
    jokes
  end

  def learn(joke)
    @joke
  end

  def tell()

  end
end
