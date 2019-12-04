class User

  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn()
    @jokes << joke_1
    @jokes << joke_2
  end
end
