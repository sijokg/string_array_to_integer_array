require 'string_array_to_integer_array/version'

# Will convert a string array of integers to integer array.
# Usage StringArrayToIntegerArray.convert(["1", "2"])
module StringArrayToIntegerArray

  extend self

  def convert(str_array)
    int_converted_array = string_to_integer_array str_array
    unselect_zero_from_array int_converted_array
  end

  private

  def string_to_integer_array(arr)
    arr.map { |member| member.to_i }
  end

  def unselect_zero_from_array(arr)
    arr.select { |val| val != 0 }
  end
end
