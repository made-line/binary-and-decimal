# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
binary_array = []

8.times {binary_array << rand(0..1)}

def binary_to_decimal(binary_array)
  sum = 0
  binary_array.each_with_index do |binary, index|
    exponent = binary_array.length - 1 - index
    value = binary * 2 ** exponent
    sum += value
  end
  # raise NotImplementedError
  return sum
end

print binary_to_decimal(binary_array)
