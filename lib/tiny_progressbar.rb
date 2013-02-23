require "tiny_progressbar/version"

class TinyProgressbar
  LF = "\r"
  FORMAT = "[%-30s] (%03d/%03d done)"

  def initialize(goal)
    @goal = goal
    @now = 0
    display
  end
  attr_reader :goal, :now

  def succeed
    @now += 1
    back_cursor
    display
  end

  def clear
    print LF + " " * 100 + LF
  end

  def back_cursor
    print LF
  end

  def display
    print FORMAT % [("=" * (30 * @now / @goal)), @now, @goal]
  end
end
