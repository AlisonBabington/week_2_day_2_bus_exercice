require_relative('bus_stop.rb')
class Bus
  attr_reader(:route_number, :destination, :passengers)
  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers || []
  end

  def drive
    return "Brum Brum"
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty
    @passengers.clear
  end

  def pick_up_from_stop(queue)
    @passengers << queue
    .empty_stop
  end
end
