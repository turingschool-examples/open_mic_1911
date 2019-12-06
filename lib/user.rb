class User

  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(other_user, joke)
    other_user.jokes << joke
  end

  def joke_by_id(id_num)
    index = id_num - 1
    return @jokes[index]
  end
end
