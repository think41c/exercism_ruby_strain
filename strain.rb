require 'pry'

class Array

  def keep
    # Call a keep/discard method that takes in a /true/false parameter
    # Then use that param in the "if yield(x) == PARAM" line of the code. 
    
    kept_elements = []
    each do |user_array_element|
      if yield(user_array_element)
        kept_elements << user_array_element
      end
    end
    kept_elements
    binding.pry
  end

  def discard
    rej_elements = []
    each do |user_array_element|
      if yield(user_array_element) == false
        rej_elements << user_array_element
      end
    end
    rej_elements
  end
end
