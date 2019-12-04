class User

  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(add)
    @jokes << add
  end
end
