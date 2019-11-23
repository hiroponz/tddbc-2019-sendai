class Scheduler
  attr_reader :hour, :min, :sec
  def initialize(hour: nil, min: nil, sec: nil)
    @hour = hour
    @min = min
    @sec = sec
  end

  def to_s
    [
      sec || '*',
      min || '*',
      hour || '*'
    ].join(' ')
  end

  def match?(hour:, min:, sec:)
    match_hour?(hour) && match_min?(min) && match_sec?(sec)
  end

  private

  def match_hour?(hour)
    return true if @hour.nil?

    @hour == hour
  end

  def match_min?(min)
    return true if @min.nil?

    @min == min
  end
  def match_sec?(sec)
    return true if @sec.nil?

    @sec == sec
  end
end