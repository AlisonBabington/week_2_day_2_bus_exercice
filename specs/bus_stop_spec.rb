require('minitest/autorun')
require('minitest/rg')
require_relative('../bus.rb')
require_relative('../person.rb')
require_relative('../bus_stop.rb')

class BusStopTest < MiniTest::Test
  def setup
    @bus_stop = BusStop.new("Fountain Bridge", [])
  end

  def test_check_bus_stop_has_name
    assert_equal("Fountain Bridge", @bus_stop.name)
  end

  def test_check_bus_stop_has_queue
    assert_equal(0, @bus_stop.queue.count)
  end

  def test_add_person
    person1 = Person.new("Ben", 24)
    @bus_stop.add_person(person1)
    assert_equal(1, @bus_stop.queue.count)
  end
end
