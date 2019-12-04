class User
  attr_reader :name, :jokes
  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << (joke)
  end

  def tell(friend, joke)
    friend.learn(joke)
  end

  def joke_by_id(id)
    @jokes.find_all do |ident|
      id == ident.id
    end 
  end

end
