class Array
  def keep
    
    kept_elements = []
    each do |user_array_element|
      puts user_array_element
      if yield(user_array_element) == true 
        kept_elements << user_array_element
      else 
      end

    end
    p kept_elements


  end
end

[1, 2, 30].keep { |e| e < 10 }