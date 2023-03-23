# Write a ruby program that tracks the score for a bowling game.
# 3:21
# Look over the rules for bowling: https://www.wikihow.com/Score-Bowling
# 3:21
# Spend the next 5 minutes decomposing the following problem (just decompose the problem, do not write any code to actually solve the problem for now):
# Write code to keep track of the score of a game of bowling. It should have two methods: roll which takes in the number of pins knocked down, and score which is called at the end and returns the total game score.

#1.) Understand the problem
    #Write a ruby program that tracks the score for a bowling game.
#2.) How does scoring work in a bowling game?

#3.) 

# 1. Understand the problem
# 2. Make a plan
# 3. Carry out the plan
# 4. Look back and improve your solution

#     make it simple: 
#     -one person is bowling 
#     -they never get a strike
#     -they never get a spare
#     -player gets two rolls per frame


# In bowling, each frame has ten pins, and the goal is to knock down as many pins as possible with two rolls. If a player knocks down all ten pins with their first roll, they score a "strike." If they knock down all ten pins with both rolls, they score a "spare." 

# The score for each frame is based on the number of pins knocked down and any bonus points earned from strikes or spares in previous frames. The final frame may have up to three rolls if the player scores a strike or spare. The maximum possible score for a game of bowling is 300.


#First I need to define a person who is playing
#Next I should define score or set the intial score to 0
#There are 10 frames, maybe I should loop through them?
#remeber 2 rolls per frame, lets just assume the first roll is 5 and second is 2 for each frame
#output should be overall score

# puts "Please enter player 1's name: "
# player1 = gets.chomp
# player1_score = 0

# 10.times do
#   frame_score = 5 + 2 #this is me adding the first roll to the second roll in the each frame
#   player1_score = player1_score + frame_score #add the frame score to the overall score
# end

# #Testing if frame one works
# puts "#{player1}'s final score is: #{player1_score}"

#To summarize, right now I have a program that asks for player ones name and prints to the console that players score assuming they rolled 5 pins down on their first throw and 2 pins down on thier second for every frame.

#Now lets say we want to be able to allow us to input the score ourselves for one frame?

puts "Please enter player 1's name: "
player1 = gets.chomp
player1_score = 0

10.times do |frame|
  puts "Frame #{frame+1}"
  puts "Throw 1: (Please enter the number of pins you knocked down on your first throw.)"
  throw1 = gets.chomp.to_i
  if throw1 == 10
    puts "Strike!"
    player1_score += 10
    next
  end

  puts "Throw 2: (Please enter the number of pins you knocked down on your second throw.)"
  throw2 = gets.chomp.to_i
  frame_score = throw1 + throw2
  if frame_score == 10
    puts "Spare!"
  end
  player1_score += frame_score
end

puts "#{player1}'s final score is: #{player1_score}"