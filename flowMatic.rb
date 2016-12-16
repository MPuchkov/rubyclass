=begin
|~~ |~~
| |
:$: HIS MAJESTY'S FLOWMATIC SOMETHING-OR-OTHER :$:
`'''''''''''''''''''''''''''''''''''''''''''''`
~= Instructions =~
1. Water should flow if flowmatic_on is true and
water_available is true.
2. If flowmatic_on is false, the message
"Flowmatic is off!" should appear.
3. If water_available is false, the message
"No water!" should appear.
4. If the flow_rate is above 50, the warning
"Warning! flow_rate is above 50!" should
appear, along with the current flow rate.
5. If the flow_rate is below 50, the warning
"Warning! flow_rate is below 50!" should
appear, along with the current flow rate.
=end

flowmatic_on=true
water_available=false
flow_rate=50

if !flowmatic_on # nice use of !
  puts "Flowmatic is off!"
elsif flowmatic_on&&water_available
  puts "Water is flowing"
  #you seem to be missing an output for when there is no water available. it should go in this if-else statement
end

if !water_available#add this as an elsif in your original if-else statement, this would work but is not clean coding
  puts "No Water!"
end

if flow_rate<50
  puts "Warning! flow_rate is below 50! The current flow_rate is #{flow_rate}" #nice job!
elsif flow_rate>50
  puts "Warning! flow_rate is above 50! The current flow_rate is #{flow_rate}"
end
