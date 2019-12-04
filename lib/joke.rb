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
