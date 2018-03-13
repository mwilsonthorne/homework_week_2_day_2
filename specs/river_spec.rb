require('minitest/autorun')
require_relative('../fish.rb')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

def setup
  a_fish1 = Fish.new("Snapper")
  a_fish2 = Fish.new("Haddock")
  a_fish_array = [a_fish1, a_fish2]
  @the_river = River.new("Forth", a_fish_array)

end

def test_river_has_name
  assert_equal("Forth", @the_river.name)
end

def test_many_fish
  assert_equal(Array, @the_river.fishes.class)
  # assert_equal(0, @the_river.fishes.length)
end


end
