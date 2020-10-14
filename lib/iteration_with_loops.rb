def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_index = 0 
  lowest_numbers = [] 
  while row_index < src.count do
    element_index = 0
    current_array = src[row_index]
    lowest_value = current_array[0]
    while element_index < current_array.count do
      if current_array[element_index] < lowest_value
        lowest_value = current_array[element_index]
      end
    element_index += 1
    end
  lowest_numbers.push(lowest_value)
  row_index += 1
  end  
  lowest_numbers
end
