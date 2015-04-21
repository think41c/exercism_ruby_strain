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
    rej_elements = []
    each do |user_array_element|
      if yield(user_array_element) == true
        rej_elements << user_array_element
      end
    end
  end

end
