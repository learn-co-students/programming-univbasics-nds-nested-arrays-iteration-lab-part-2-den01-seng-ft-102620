def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  daily_low = []
row_index = 0
while row_index < src.count do
  element_index = 0
  smallest_int = 999
 
  while element_index < src[row_index].count do
    if smallest_int > src[row_index][element_index]
      smallest_int = src[row_index][element_index]
      
      
    end
    element_index += 1
     
     if element_index == src[row_index].count 
     
       daily_low << smallest_int
    
    end
  end
  row_index += 1
end
daily_low
end