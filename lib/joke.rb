# pry(main)> require './lib/joke'
# # => true
#
# pry(main)> joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# # => #<Joke:0x00007f84602e4190...>
#
# pry(main)> joke.id
# # => 1
#
# pry(main)> joke.setup
# # => "Why did the strawberry cross the road?"
#
# pry(main)> joke.punchline
# # => "Because his mother was in a jam."
# ```
class Joke

  attr_reader :joke, :number, :answer

  def initialize(number, joke, answer)
    @number = number
    @joke = joke
    @answer = answer
  end

  def id
    number = 1
  end

  def setup
    "Why did the strawberry cross the road?"
  end

  def punchline
    "Because his mother was in a jam."
  end
end
