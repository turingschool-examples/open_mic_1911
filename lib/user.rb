require 'pry'
class User

  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn_joke(joke)
    @jokes << joke
  end

  def tell_joke(user, joke)
     user.learn_joke(joke)
   end


end
