class User
  attr_reader :name, :jokes, :jokes_id

  def initialize(name) 
    @name = name
    @jokes = []
    @jokes_id = []
  end

  def learn(joke)
    @jokes_id << joke.id
    @jokes << joke 
  end

  def tell(friend, joke)
    friend.jokes << joke 
  end

end