class Array

  def keep
    kept_elements = []
    each do |user_array_element|
      if yield(user_array_element) == true 
        kept_elements << user_array_element
      end
    end
    kept_elements
  end

  def discard
    each do |user_array_element|
      user_array_element
      if yield(user_array_element) == false 
        kept_elements ||= []
        kept_elements << user_array_element
      end
    end
  end

end
