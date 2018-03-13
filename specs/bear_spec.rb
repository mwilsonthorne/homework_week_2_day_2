require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

def setup
  @bear = Bear.new("Yogi")
  @fish = Fish.new("Kipper")
end

def test_bear_has_name
  assert_equal("Yogi", @bear.name)
end

def test_is_starving_?
  result = @bear.is_starving_?
  assert_equal(true, result)
end

def test_eat_a_fish
  @bear.eat_a_fish(@fish)
  assert_equal(1, @bear.no_of_fish_in_stomach())
end



end
