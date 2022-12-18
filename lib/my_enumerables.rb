module Enumerable
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

  def my_select
    # New array
    new_array = []
    # Loop through the array
    for el in self
      # If element fits criteria, push it into the new array
      if yield el
        new_array << el
      end
    end
    new_array
  end

  def my_all?
    bool = true
    for el in self
      unless yield el
        bool = false
      end
    end
    bool
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    # Repeat yield for each element of an array
    for el in self
      yield element
    end
    # Return the original array
    self
  end
end