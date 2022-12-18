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

  def my_any?
    bool = false
    for el in self
      if yield el
        bool = true
      end
    end
    bool
  end

  def my_none?
    bool = true
    for el in self
      if yield el
        bool = false
      end
    end
    bool
  end

  def my_count
    # Initialize the variable count
    count = 0
    # If there is a condition (Block exists)
    if block_given?
      # For every element of the array
      for el in self
        # If the argument passed into the yield returns true
        if yield el
          # Add the count
          count += 1
        end
      end
    else
      for el in self
        count += 1
      end
    end
    count
  end
  
  def my_map
    # Initialize the new array
    new_array = []
    # For every element of the array
    for el in self
      # Apply the block and push the new element into the updated array
      new_array.push(yield el)
    end
    # Return the new array
    new_array
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