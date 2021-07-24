# recursion HW - W3D3

def sum_to(n)
    return nil if n < 1
    return 1 if n == 1
    result = n + sum_to(n - 1)
    result
end

def add_numbers(nums_array)
    return nums_array[0] if nums_array.length == 1
    return 0 if nums_array.length == 0

    result = nums_array.first + add_numbers(nums_array[1..-1])
    return result
end

#   # Test Cases
#   puts add_numbers([1,2,3,4]) # => returns 10
#   puts add_numbers([3]) # => returns 3
#   puts add_numbers([-80,34,7]) # => returns -39
#   puts add_numbers([]) # => returns nilputs

def gamma_fnc(n)
    return nil if n < 1
    return 1 if n == 1

    result = (n - 1) * gamma_fnc(n - 1)
    return result
end

# puts gamma_fnc(0)  # => returns nil
# puts gamma_fnc(1)  # => returns 1
# puts gamma_fnc(4)  # => returns 6
# puts gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors, favorite)
    # return false if flavors[0] != favorite && flavors.length == 1
    return false if flavors.length == 0
    return true if flavors.first == favorite

    result = ice_cream_shop(flavors[1..-1], favorite)
    return result
end

#   # Test Cases
#   puts ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#   puts ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#   puts ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#   puts ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#   puts ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(string)
    return "" if string.length == 0
    reverse(string[1..-1]) + string[0]
end

  # Test Cases
  puts reverse("house") # => "esuoh"
  puts reverse("dog") # => "god"
  puts reverse("atom") # => "mota"
  puts reverse("q") # => "q"
  puts reverse("id") # => "di"
  puts reverse("") # => ""