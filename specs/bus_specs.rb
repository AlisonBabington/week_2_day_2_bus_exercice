require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../bus_stop.rb')
require_relative('../person.rb')

class BusTest < MiniTest::Test
  def setup
    @bus1 = Bus.new(26, "Tranent", [])
  end

  def test_bus_has_route_number
    assert_equal(26, @bus1.route_number)
  end

  def test_bus_has_destination
    assert_equal("Tranent", @bus1.destination)
  end

  def test_drives
    assert_equal("Brum Brum", @bus1.drive)
  end

  def test_check_passenger_amount
    assert_equal(0, @bus1.passengers.count)
  end

  def test_check_add_passenger
    passenger = Person.new("Alison", 29)
    @bus1.pick_up(passenger)
    assert_equal("Alison", @bus1.passengers.last.name)
  end

  def test_check_remove_passenger
    person1 = Person.new("Alison", 29)
    person2 = Person.new("Ben", 24)
    @bus1.pick_up(person1)
    @bus1.pick_up(person2)
    @bus1.drop_off(person2)
    assert_equal(1, @bus1.passengers.count)
  end

  def test_check_no_passenger
    person1 = Person.new("Alison", 29)
    person2 = Person.new("Ben", 24)
    @bus1.pick_up(person1)
    @bus1.pick_up(person2)
    @bus1.empty
    assert_equal(0 , @bus1.passengers.count)
  end

  def test_collect_all_passengers
    @bus_stop1 = BusStop.new("Fountain Bridge", 4)
    @bus1.pick_up_from_stop(@bus_stop1.queue)
    assert_equal(0, @bus_stop1.queue)
  end
end
