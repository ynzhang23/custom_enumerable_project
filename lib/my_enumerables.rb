module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    # Repeat yield for each element of an array
    for element in self
      yield element
    end
    # Return the original array
    self
  end
end