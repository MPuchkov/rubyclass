class Taboo #this starts the class
#this is a hash with all the taboo words and the words to describe
@@words_to_describe= {
  "Lion" => ["Mane", "Cat", "Africa", "King", "Mammal"],
  "Backpack" => ["School", "Work", "Carry", "Bag", "Equipment"],
  "Clock" => ["Time", "Measure", "Hands", "Numbers", "Watch"],
  "Clouds" => ["Fluffy", "Sky", "Floats", "White", "Water"],
  "Hot Chocolate" => ["Liquid", "Cocoa", "Cup", "Mug", "Drink"]
}

def initialize #this starts a method
  puts "This game is called Taboo. You need to describe a word for your team without saying the taboo words. Team 1 will try to get to 5 points as fast as they can and then Team 2 will try. Whoever finishes faster wins. When you get a word right, type in y. If you say a taboo word, type in n." #this describes the game
  puts "What is team 1's name?" #this asks what the team name for team 1 is
  @team1=gets.chomp #this stores the answer that they put in

  @score_for_team_1=0 #creates and sets a score for team 1

  puts "What is team 2's name?" #this asks what the team name for team 1 is
  @team2=gets.chomp#this stores the answer that they put in

  @score_for_team_2=0 #creates and sets a score for team 2
end #this ends the method initialize

def game

  puts "Team 1 is going first. After Team 1 is done, Team 2 will go. Ready, Set, Go!" #this says who is going first

  until @score_for_team_1==5 do #this stops the game if a team gets 5, otherwise the game goes on
    index = rand(@@words_to_describe.length)
    key = @@words_to_describe.keys[index].to_s
    value = @@words_to_describe.values[index]
    puts "Your word to describe is #{key} and your taboo words are #{value}. Press y when correct and n when wrong." #this puts a random word form the list
    answer=gets.chomp #this stores their answer


 if answer=="y" #this starts doing something if y is typed in
   @score_for_team_1+=1 #this adds a point to team 1
else #this continues the loop if they put something other than y
  @score_for_team_1-=1 #this takes away a point from team 1
end #this ends the if loop
end #this ends the until loop

puts "Now it's team 2's turn!"

until @score_for_team_2==5 do #this stops the game if a team gets 5, otherwise the game goes on
  index = rand(@@words_to_describe.length)
  key = @@words_to_describe.keys[index].to_s
  value = @@words_to_describe.values[index]
  puts "Your word to describe is #{key} and your taboo words are #{value}. Press y when correct and n when wrong." #this puts a random word form the list
  answer=gets.chomp #this stores their answer


if answer=="y" #this starts doing something if y is typed in
 @score_for_team_2+=1 #this adds a point to team 1
else #this continues the loop if they put something other than y
@score_for_team_2-=1 #this takes away a point from team 1
end #this ends the if loop
end #this ends the until loop

puts "Who got to 5 points faster?" #this asks who won
winner=gets.chomp #this stores the answer
puts "Congratulations #{winner}!" #this congratulates the winner

end #this ends the method game
end #this ends the entire code

michael=Taboo.new #this makes it so I can start calling the method and runs the initialize method
michael.game #this calls the game method
