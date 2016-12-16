=begin
For this project you have to check to see if the user has all of the correct ski gear




=end


=begin
Part 1: The setup
you will need an array of ski gear that is necessary
you will need an array that is empty to take user input

you will need a variable that keeps track of whether you are done adding gear or not

=end
done=false
ski_gear=["skis", "boots", "helmet", "goggles", "gloves", "ski clothes", "buff"]
userGear=[]

=begin
Part 2: The user input.

You need to make have the user make an array of all the things the user has. This will have to be in a loop. Start by asking them what they have, one by one, then use the operator << to add it to your usergear array. like this userGear << gearTheySaid
=end

while !done
  puts "What ski gear do you need?"
  gear=gets.chomp
  userGear << gear
  puts "You now have #{gear} in your inventory"
  puts "Is that everything you need?"
  decision=gets.chomp.downcase
  if decision=="yes"
    done==true
  else
    done==false
end

=begin
Part 3: check the user list versus the master list
1. Create a loop that goes through each item on the users list.
2. INSIDE that loop there needs to be another loop that goes through the master loop to see if the users item is an item on the master list
3. At this point you have a choice, you can print what they have, you can print what they are missing, but either way you have to notify the person that they are ready to ski or not, and what they need to do to be ready.
=end


for stuff in ski_gear
  puts "You need #{stuff}."
  end
  for things in userGear
    puts "You have #{things}"

end
end
