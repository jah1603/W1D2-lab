require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusStopTest < MiniTest::Test

  def setup
    @person1 = Person.new("Tony", 24)
    @person2 = Person.new("Zsolt", 21)
    @bus_stop1 = BusStop.new("Hollyrood Park", [])
  end

  def test_count_people_queuing
    assert_equal(0, @bus_stop1.count_people_queuing())
  end

  def test_add_person_to_queue
    @bus_stop1.add_person_to_queue(@person1)
    assert_equal(1, @bus_stop1.count_people_queuing())
  end

end
