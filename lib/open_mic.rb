class OpenMic
  attr_reader :location, :date, :performers

  def initialize(hash)
    @location = hash[:location]
    @date = hash[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    locate = Hash.new {|hash, key| hash[key] = []}

    @performers.each do |joke|
      locate[joke.user.id] << joke
    end

    if locate < 2<return false
    else
      return true
    end

end
