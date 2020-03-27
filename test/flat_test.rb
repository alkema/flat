require 'minitest/autorun'
require 'flat'

class FlatTest < Minitest::Test
  include Flat

  def test_recurse_flatten
    assert_equal([1, 2, 3, 4], recurse_flatten([[1, 2, [3]], 4]))
  end

  def test_reduce_flatten
    assert_equal([1, 2, 3, 4], reduce_flatten([[1, 2, [3]], 4]))
  end
end
