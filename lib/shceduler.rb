class Scheduler
  attr_reader :hour, :min, :sec
  def initialize(hour: nil, min: nil, sec: nil)
    @hour = hour
    @min = min
    @sec = sec
  end

  def to_s
    [sec, min, hour].join(' ')
  end

  def match?(hour:, min:, sec:)
    match_hour?(hour) && @min == min && @sec == sec
  end

  private

  def match_hour?(hour)
    return true if @hour.nil?

    @hour == hour
  end
end