class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(user, joke)
    user.jokes << joke
  end

  def joke_by_id(ident)
    @jokes.find do |joke|
      joke.id == ident
    end
  end

end

# pry(main)> ali.jokes
# # => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]
#
# pry(main)> ali.joke_by_id(1)
# # => #<Joke:0x00007fb71da169f0...>
#
# pry(main)> ali.joke_by_id(2)
# # => #<Joke:0x00007fb71d8e0bd0...>
# ```
