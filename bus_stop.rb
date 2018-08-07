class BusStop
  attr_reader :name
  attr_accessor :queue

  def initialize(name, queue)
    @name = name
    @queue = queue
  end

  def add_person(person)
    @queue << person
  end

  def empty_stop
    @queue.clear

  end
end
