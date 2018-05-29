require("minitest/autorun")
require_relative("../bus.rb")

class BusTest < MiniTest::Test

  def setup
    @bus1 = Bus.new(22, "Leith", [])
  end

  def test_drive_method
    assert_equal("Brum brum", @bus1.drive_method())
  end

  def test_count_passengers
    assert_equal(0, @bus1.count_passengers())
  end

end
