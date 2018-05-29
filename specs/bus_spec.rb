require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusTest < MiniTest::Test

  def setup
    @person1 = Person.new("Tony", 24)
    @person2 = Person.new("Zsolt", 21)

    @bus1 = Bus.new(22, "Leith", [])
    @bus2 = Bus.new(33, "Ocean Terminal", [@person1, @person2])
    @bus_stop = BusStop.new("Haymarket", [@person1])
  end

  def test_drive_method
    assert_equal("Brum brum", @bus1.drive_method())
  end

  def test_count_passengers
    assert_equal(0, @bus1.count_passengers())
  end

  def test_pick_up
    @bus1.pick_up(@person1)
    assert_equal(1, @bus1.count_passengers())
  end

  def test_drop_off
    @bus2.drop_off(@person2)
    assert_equal(1, @bus2.count_passengers())
  end

  def test_empty
    @bus2.empty()
    assert_equal(0, @bus2.count_passengers())
  end

  def test_pick_up_from_stop__passengers_added
    @bus1.pick_up_from_stop(@bus_stop)
    assert_equal(1, @bus1.count_passengers())
  end

end
