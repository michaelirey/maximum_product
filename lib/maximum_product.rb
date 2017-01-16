class MaximumProduct
  attr_reader :integers

  def initialize(integers)
    @integers = integers.sort
  end

  def maximum
    [largest_three_product, smallest_two_and_largest_product].max
  end

  private

  def largest_three_product
    integers.last(3).inject(:*)
  end

  def smallest_two_and_largest_product
    (integers.first(2) + [integers.last]).inject(:*)
  end
end
