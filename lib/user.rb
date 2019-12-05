class User
  attr_reader :name, :jokes

  def initialize(name_param)
    @name = name_param
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end
end
