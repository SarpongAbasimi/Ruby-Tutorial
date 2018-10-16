

def sum(user_input)
  if user_input%1 == 0 && user_input > 0
  accumulator=0
  1.upto((user_input).to_i) {
  |number| accumulator += number
  }
  return accumulator
else
  return "Sorry input must be an integer and  greater than 0"
end
end

puts sum(-4)



# Your code goes here
  def sum(user_input)
  total=0
  #loop through the user_iput
  1.upto((user_input).to_i) {
  |number|total += number #add user_iput(range) to tatal
  }
   return total #return total
end

puts sum(250)
