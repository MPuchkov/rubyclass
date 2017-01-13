
for numbers in (1..100)

if numbers%15==0
  puts "FizzBuzz"
elsif  numbers%5==0
  puts "Buzz"
elsif numbers%3==0
  puts "Fizz"
else
  puts numbers
end
end
