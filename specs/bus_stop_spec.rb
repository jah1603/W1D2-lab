require("minitest/autorun")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusStopTest < MiniTest::Test

  def setup
    @person1 = Person.new("John", 24)
    @person2 = Person.new("Emily", 21)
    @person3 = Person.new("Elizabeth", 91)
    @person4 = Person.new("Erik", 42)
    @bus_stop1 = BusStop.new("Hollyrood Park", [@person3, @person4])
  end

  def test_count_people_queuing
    assert_equal(2, @bus_stop1.count_people_queuing())
  end

  def test_add_person_to_queue
    @bus_stop1.add_person_to_queue(@person1)
    assert_equal(3, @bus_stop1.count_people_queuing())
  end

  # def test_pick_up_from_stop__queue_empty
  #   @bus1.pick_up_from_stop(@bus_stop)
  #   assert_equal(1, @bus1.count_passengers())
  # end


  # def test_pick_up_from_stop__queue_empty
  #   @bus_stop1.pick_up_from_stop(queue)
  #   assert_equal(1, @queue.length())
  # end

end
