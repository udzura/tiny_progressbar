require 'minitest/unit'
require 'tiny_progressbar'

MiniTest::Unit.autorun

class TestTinyProgressbar < MiniTest::Unit::TestCase
  def setup
    $stdout, @orig_stdout = open("/dev/null", 'w'), $stdout
    @progressbar = TinyProgressbar.new 100
  end

  def teardown
    $stdout = @orig_stdout
  end

  def test_goal_set_100
    assert_equal @progressbar.goal, 100
  end

  def test_now_set_0_on_init
    assert_equal @progressbar.now, 0
  end

  def test_now_succeeds
    @progressbar.succeed
    assert_equal @progressbar.now, 1
  end
end
