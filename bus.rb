class Bus

attr_reader(:route_number, :destination, :passengers)

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers
  end

  def drive_method()
    return "Brum brum"
  end

  def count_passengers()
    return @passengers.length()
  end

  def pick_up(passenger)
    return @passengers << passenger
  end

  def drop_off(passenger)
     @passengers.delete(passenger)
  end

  def empty()
    @passengers.clear()
  end

  def pick_up_from_stop(stop)
    @passengers.concat(stop.queue())
  end

end
