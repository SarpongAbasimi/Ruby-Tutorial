movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end


#MyownVersion of the task
=begin
movies={
  movie1:"1",
  movie2:"2",
  movie3:"3",
  movie4:'4',
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."


UserChoice=gets.chomp.downcase

case UserChoice
when add
  puts "Type in the name of the video You want to add"
  videoname= gets.chomp
  if (videoname.to_sym).nil?
  puts " what rating will You give to #{videoname} on a scale of (1...5)"
  rating=gets.chomp
  movies[videoname.to_sym]=rating.to_int
  puts " The movie #{videoname} has now been added to the movie libraey and a rating of #{rating} has been
  assigned to it"
else
  puts "Sorry the movie You are trying to add #{videoname} already Exists and it has a rating of #{movies['videoname']}"
end
when update
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when display
  movies.each {
    |movie,ratings|
    puts "#{movie}: #{rating}"
  }
when delete
  puts " What movie Would You like to delete?"
  if movies[videoname.to_sym].nil?
    puts " Sorry video does not exit"
  else
    movies.delete(videoname.to_sym)
    puts " The movie #{videoname} has been deleted"
  end
else
  puts "sorry"
end

=end
