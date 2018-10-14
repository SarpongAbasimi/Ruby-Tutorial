=begin
The odds_n_ends array is full of all sorts of objects, but we only want the integers (numbers without decimal bits).

Create a new variable, ints, and store the result of calling odds_n_ends.select method with a block that checks if the element .is_a? Integer.

puts ints at the end of the file in order to see the final contents of the array.
=end
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

# Add your code below!

check= Proc.new {|x| x.is_a?Integer}
puts ints=odds_n_ends.select(&check)

#Same solution but using lambda
=begin
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

# Add your code below!

check = lambda {|x| x.is_a? Integer}

ints=odds_n_ends.select(&check)
puts ints
=end


#---------------------Example 2------------------------------------------

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!

first_half= lambda {|key,value| value < "M"}

a_to_m=crew.select(&first_half)
puts a_to_m
