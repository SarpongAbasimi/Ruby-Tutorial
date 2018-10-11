#the application takes the variable text
text = " My My name name name is sarpong"

# the string is the splitted into an array
words = text.split(" ")
#this creates something like a JSON object with an inital value of 0
free = Hash.new(0)

#this loops through all the letters in the string and counts how many times they appear
words.each do |x|
  free[x] += 1
end
free = free.sort_by do |x,y|
  "#{x}:#{y}"
end
free.reverse!
free.each { |word, frequency| puts word + " " + frequency.to_s }
