class Scheduler
  attr_reader :hour, :min, :sec
  def initialize(hour:, min:, sec:)
    @hour = hour
    @min = min
    @sec = sec
  end

  def to_s
    [sec, min, hour].join(' ')
  end

  def match?(hour:, min:, sec:)
    @hour == hour && @min == min && @sec == sec
  end
end