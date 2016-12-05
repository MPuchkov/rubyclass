=begin
in this file you will be telling the user about their surroundings.

1. the person fell into a maze, so you must inform them of that
2. ask the person which direction they would like to go: N,E,S,W
3. Then, based on their choice you are going to print
"#{their_choice}, good choice, you have met the knights who say ni!"
4. if the person does not choose a direction correctly, warn them that they
  have not correctly chosen a direction.

Things you will need
if else end
variables
=
puts
gets.chomp
#{}
""
print(if you want)

upload to github!!! Also accept my request to be part of the SBA organization.
=end
playerisdead=false

puts "You have been dropped into a maze! Mwahahahaha!"

while !playerisdead
  puts "Which way would you like to go, North, East, West, or South? Choose wisely because there is only one right way...."

  their_choice=gets.chomp
  their_choice=their_choice.downcase
  if their_choice=="east"
    puts "East, good choice, you are out of danger"
  elsif their_choice=="west"
    puts "You just walked right into the dragon's lair."
    playerisdead=true
  elsif their_choice=="north"
    puts "You just fell into a pit of lava. Is your existence really so pitiful you wanted to kill yourself! Ugh, humans..."
    playerisdead=true
  elsif their_choice=="south"
    puts "Why would you ever choose South! That's where the goblins live and they are going to kill you in 3... 2... 1... aaand you're dead."
    playerisdead=true
  else
    puts "Because you didn't name a direction, the trapdoor under you opened and you fell to your death."
    playerisdead=true
  end
  break
end
if playerisdead
  puts "You died! Better luck next time!"
end
