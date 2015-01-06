# The Integer data type is its own class in Ruby and you can "re-open" this class to add new methods.

# Demonstrate that 15 is between 12 and 18 by creating a method called `is_between?` in the `Integer` class that returns true if the number is between min and max values that are given as arguments.

class Integer
  def is_between?(min, max)
    # You will need to use they keyword `self` which refers to the number that this method is called on.
    # In `8.is_between?(4,10)`, `self` would be equal to `8`. 

  end
end

# Try using your new Integer method by firing up irb or pry in your terminal and then loading your file by typing `load "3_is_between.rb"`. 
