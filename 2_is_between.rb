# The Integer data type is its own class in Ruby and you can "re-open" this class to add new methods.

# Demonstrate that 15 is between 12 and 18 by creating a method called `is_between?` in the `Integer` class that returns true if the number is between the min and max values that are given as arguments.

class Integer
  def is_between?(min, max)
    # You will need to use the keyword `self` in this method. Self refers to the Integer that this method will be called on. In `8.is_between?(4,10)`, `self` would be equal to `8`. 
    # The number `self` is being compared to min and max.
    
  end
end

# Try using your new Integer method by calling the is_between? method on several integers and running `ruby 2_is_between.rb` in your terminal. Hint: You'll want to puts your results so you can see them.