require('minitest/autorun')
require_relative("../person")

class PersonTest < Minitest::Test
    def setup
      @passenger = Person.new("Matthew", "21")
    end

    def test_passenger_has_name
      assert_equal("Matthew", @passenger.name)
    end

    def test_passenger_age
      assert_equal("21", @passenger.age)
    end

    





end
