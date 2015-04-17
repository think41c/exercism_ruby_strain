class Array
  def keep
    
    kept_elements = []
    each do |user_array_element|
      kept_elements << yield(user_array_element)
    end
    kept_elements


  end
end
