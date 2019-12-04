class User
  attr_reader :name, :jokes

  def initialize(name) 
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke 
  end

  def tell(friend, joke)
    friend.jokes << joke 
  end

end