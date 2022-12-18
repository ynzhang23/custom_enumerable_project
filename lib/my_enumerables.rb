module Enumerable
  # Your code goes here
  def my_each_with_index
    # Begin at index 0
    index = 0
    # Loop through the whole array
    for el in self
      yield el, index
      index +=1
    end
    # Return the original array
    self
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    # Repeat yield for each element of an array
    for el in self
      yield element
    end
    # Return the original array
    self
  end
end