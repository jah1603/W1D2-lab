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

end
