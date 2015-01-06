class Dog
  # 1. Create attribute accessors (readers and writers) for name, breed and happiness

  def initialize(breed)
    @happiness = 0
    # create a breed instance variable and set it to breed

  end

  # 2. Write a method called bark that makes the dog say (puts) its name and woof!


  # 3. Write a play_fetch method that increases the dogs happiness by 1 each time it plays fetch


  # 4. Write a wag_tail method that puts a tail wag if the dog has a happiness level greater than 3. If happiness is lower than three he gives you puppy dog eyes.


end

# Try using your new Dog class by firing up irb or pry in your terminal and then loading your file by typing load "1_dog.rb". 

# 1. Create a new instance of a Dog with the breed "Beagle". You should store this new dog instance in a variable so you can easily call methods on it - like `snoopy.bark`.
# 2. Set the dogs name to Snoopy
# 3. Play fetch with the dog until he is happy enough to wag his tail
# 4. Wag the dog's tail
