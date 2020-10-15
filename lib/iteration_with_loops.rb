def find_min_in_nested_arrays(src)
  lowest_temps = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    lowest_temp_element = 100
    while element_index < src[row_index].count do

      # Array at row_index
      # Element of the inner array at element_index
      # If the length of the current element is greater than the length of longest_string_element
      # Set longest_string_element to the current element
      if src[row_index][element_index] < lowest_temp_element
        lowest_temp_element = src[row_index][element_index]
      end
      element_index += 1
    end

    # We have to check every element in each inner array, so after the loop finishes
    # The current value of longest_string_element is pushed into outer_results
    lowest_temps << lowest_temp_element
    row_index += 1
  end

  lowest_temps # => ["Sporty", "Fajita Mix", "Rosemary"]
end
