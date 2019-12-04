class User
  attr_reader :name
  attr_accessor :jokes, :learned
  def initialize (name)
    @name = name
    @jokes = []
    @learned = false
  end

  def jokes(joke)
    if learned == true
      jokes << joke
    end
    jokes
  end

  def learn(joke)
    @joke
  end

  def tell(user, joke)
    @joke
  end

  def joke_by_id(id)
  end
end
