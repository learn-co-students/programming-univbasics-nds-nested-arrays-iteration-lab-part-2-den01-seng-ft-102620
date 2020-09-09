def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  small_nums = []
  row = 0 
  while row < src.count do 
    index = 0
    smallest_nums = src[row][0]
    while index < src[row].count do 
      if smallest_nums >= src[row][index] 
        smallest_nums = src[row][index]
      end
      index += 1 
    end
    small_nums << smallest_nums
    row += 1 
  end
  small_nums
end
