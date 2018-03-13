require("minitest/autorun")
require_relative("../bus")
require_relative("../person")

class BusTest < MiniTest::Test

def setup
  @bus = Bus.new(22, "Haymarket")
  @person = Person.new("Matthew", 21)
end

def test_bus_route_number
  assert_equal(22, @bus.route_number)
end

def test_destination
  assert_equal("Haymarket", @bus.destination)
end

def test_drive
  assert_equal("Brum Brum!", @bus.drive())
end

def test_no_of_passengers
  assert_equal(0, @bus.no_of_passengers())
end

def test_pick_up
  @bus.pick_up(@person)
  assert_equal(1, @bus.no_of_passengers())
end

def test_drop_off
  @bus.drop_off(@person)
  assert_equal(0, @bus.no_of_passengers())
end

def test_remove_all
  @bus.pick_up(@person)

  person2 = Person.new("Ewa", 27)
  person3 = Person.new("James", 29)

  @bus.pick_up(person2)
  @bus.pick_up(person3)


  @bus.remove_all()
  assert_equal(0, @bus.no_of_passengers())
end

end
