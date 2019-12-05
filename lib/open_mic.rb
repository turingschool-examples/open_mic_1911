class OpenMic
  attr_reader :location, :date, :performers

  def initialize(open_mic_info)
    @location = open_mic_info[:location]
    @date = open_mic_info[:date]
    @performers = []
  end

  def welcome(user)
    @performers << user
  end

  def repeated_jokes?
    all_jokes = @performers.map do |user|
      user.jokes
    end

    all_jokes.flatten.length != all_jokes.flatten.uniq.length
  end
end
