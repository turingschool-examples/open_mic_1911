require 'pry'


class User

attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(who, what)
    who.jokes << what
  end

  def joke_by_id(number)
    # binding.pry
    # self.select {|number| self.jokes.id}
    self.jokes.each do |search|
      if search.id == number
        return search
      end
    end
  end
end
