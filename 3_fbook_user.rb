class User
  # 1. Create an initialize method that takes in one argument - name - and sets up a name instance variables.


  # 2. Create attribute accessors (readers and writers) for name, pokes and wall.


  # 3. Inside of the initialize method that you created set pokes equal to 0 and the wall equal to an empty array

  # 4. Create a poke method that takes in one argument - a user who is being poked. This method should puts who is poking who and increase the pokees pokes by 1. Hint: the poker is the instance of User that this method is called on (`self`)


  # 5. Create a post_on_wall method that takes in two arguments - a message and the user who's wall is being written on. This method should puts the wall post (signed with self's name) and add the post to the other user's wall. 


  # 6. Create a display_wall_posts method that iterates through the user's wall and puts each post


  # Bonus! Modify your display_wall_posts method to print out the wall posts in a numbered list. Something like this:
  # 1. Hey Carla! What's going on? -George
  # 2. Isn't facebook rad? -George
  # 3. I love writing wall posts. -George
end

  

# Now practice using your new User class

# 1. Create two new instances of the User class
# 2. Have user 1 poke user 2
# 3. Have user 2 write on user 1's wall
# 4. Display all of user 1's wall posts
