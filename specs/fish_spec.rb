require('minitest/autorun')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

def setup
  @the_species = Fish.new("Trout")
end

def test_get_species
  assert_equal("Trout", @the_species.species)
end

end
