require 'pry'
def find_min_in_nested_arrays(array_of_daily_temperatures)
 outer_results = []
 row_index = 0
 while row_index < array_of_daily_temperatures.count do 
   element_index = 0 
   low_value = 100
   while element_index < array_of_daily_temperatures[row_index].count do
    if array_of_daily_temperatures[row_index][element_index] < low_value 
      low_value = array_of_daily_temperatures[row_index][element_index]
    end
   element_index += 1
  end
  outer_results << low_value
  row_index += 1 
 end
 return outer_results
end
