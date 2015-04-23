class Array

  def keep
    kept_elements = []
    each do |user_array_element|
      if yield(user_array_element)
        kept_elements << user_array_element
      end
    end
    kept_elements
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
