=begin

Let's suppose you are making a menu for a restaurant. Each menu has different sections that have names, but within that section it doesn't matter much what the order of the items are. You are going to use Hashes and Arrays to setup this restaurant

there are two ways to start a Hash, the first is called Hash Literal

diner_menu = {
  breakfast: ["Green eggs and ham", "toast butter side down"],
  drinks : ["water","coffee","orange juice"]
}

the second way
diner_menu=Hash.new
diner_menu["breakfast"]=["Green eggs and ham", "toast butter side down"]
diner_menu["drinks"]= ["water","coffee","orange juice"]

now make your own menu below, please use the diner_menu variable name


=end


diner_menu=Hash.new
diner_menu["breakfast"]=["Blueberry Pancakes","Cinnamon French Toast","Eggs with Bacon","Cereal"]
diner_menu["lunch"]=["PB & J sandwich","Grilled cheese sandwich","cheese and chicken quesadilla"]
diner_menu["dinner"]=["Classic Cheese Burger", "Pizza", "Bacon Cheese Burger","Chicken Soup"]
diner_menu["drinks"]=["milk","coffee","beer", "apple juice", "soda","lemondade"]



#run all your code and describe what this loop does.
diner_menu.each do |category,items|
  puts "For  #{category} we have :"
    if items.respond_to?(:each)
      items.each {|item| puts item}
    end
  end
  #this loop right above this comment states what we have in each variable. For Breakfast it reads off the array and it does so for the other variables too
