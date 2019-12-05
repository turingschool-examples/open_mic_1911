class User
  attr_reader :name, :jokes

  def initialize(name_param)
    @name = name_param
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, told_joke)
    user.learn(told_joke)
    # user.jokes << joke
  end

  def joke_by_id(id)
    found_joke = nil
    @jokes.each do |joke|
      if joke.id == id
        #send that joke as the return value of this method
        found_joke = joke
      end
    end
    found_joke

    # @jokes.find do |joke|
    #   joke.id == id
    # end
  end
end
