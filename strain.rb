class Array

  def keep_and_discard
    kept_elements = []
    each do |user_array_element|
      if @flag == true 
        if yield(user_array_element)
          kept_elements << user_array_element
        end
      else
        if yield(user_array_element) == false
          kept_elements << user_array_element
        end
      end
    end
    kept_elements
  end

  def keep(&block)
    @flag = true
    keep_and_discard(&block)
  end

  def discard(&block)
    @flag = false
    keep_and_discard(&block)
  end
end
