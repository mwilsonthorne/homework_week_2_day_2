class River

  attr_reader :name, :fishes

  def initialize(input_name, input_fishes)
    @name = input_name
    @fishes = input_fishes
    @fish_river = []
  end

  def many_fish()
    @fishes.push()
    return @fishes.count()
  end

  def fish_count()
    return @fish_river.count()
  end






end
