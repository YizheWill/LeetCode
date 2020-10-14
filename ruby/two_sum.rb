class TwoSum
  attr_reader :to_sum
=begin
    Initialize your data structure here.
=end
  def initialize()
    @to_sum = []
  end

=begin
    Add the number to an internal data structure..
    :type number: Integer
    :rtype: Void
=end
  def add(number)
    i = bsearch(@to_sum, number)
    @to_sum = @to_sum[0...i] + [number] + @to_sum[i..-1]
  end

  def bsearch(array, number)
    return 0 if array.empty?
    mid = array.length / 2
    (number < array.first ? (return 0) : (return 1)) if mid == 0
    return mid if (number == array[mid] || number < array[mid] && number > array[mid - 1])
    left = array[0...mid]
    right = array[mid + 1..-1]
    number < array[mid] ? bsearch(left, number) : mid + 1 + bsearch(right, number)
  end

=begin
    Find if there exists any pair of numbers which sum is equal to the value.
    :type value: Integer
    :rtype: Boolean
=end
  def find(value)
    to_find(@to_sum, value, 0, @to_sum.length)
  end

  def to_find(array, value, left, right)
    if left == right
      return false
    elsif array[left] + array[right] == value
      return true
    elsif (array[left] + array[right]) < value
      to_find(array, value, left + 1, right)
    elsif (array[left] + array[right]) > value
      to_find(array, value, left, right - 1)
    end
  end
end
