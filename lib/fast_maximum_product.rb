class FastMaximumProduct
  attr_reader :integers, :max_one, :max_two, :max_three, :min_one, :min_two

  def initialize(integers)
    @integers = integers
    @max_one, @max_two, @max_three = -Float::INFINITY
    @min_one, @min_two = Float::INFINITY
  end

  def maximum
    filter_values
    [largest_three_product, smallest_two_and_largest_product].max
  end

  private

  def filter_values
    integers.each do |integer|
      filter_largest(integer)
      filter_smallest(integer)
    end
  end

  def filter_smallest(integer)
    if integer <= min_one
      @min_two = min_one
      @min_one = integer
    elsif integer <= min_two
      @min_two = integer
    end
  end

  def filter_largest(integer)
    if integer >= max_one
      @max_three = max_two
      @max_two = max_one
      @max_one = integer
    elsif integer >= max_two
      @max_three = max_two
      @max_two = integer
    elsif integer >= max_three
      @max_three = integer
    end
  end

  def largest_three_product
    [max_one, max_two, max_three].inject(:*)
  end

  def smallest_two_and_largest_product
    [max_one, min_one, min_two].inject(:*)
  end
end
