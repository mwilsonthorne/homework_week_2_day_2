class Bear

  attr_reader :name


  def initialize(input_name)
    @name = input_name
    @stomach = []
  end

  def is_starving_?
    return @stomach.empty?
  end

  def no_of_fish_in_stomach()
    return @stomach.count()
  end

  def eat_a_fish(fish)
    @stomach.push(fish)
    return @stomach
  end



end
