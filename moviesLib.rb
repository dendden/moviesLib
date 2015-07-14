movies = { Fightclub: 9 }

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
    puts  'Type the name of a movie you\'d like to add:'
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
        puts 'Type in the rating of ' + title + ':'
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts title + ': ' + rating.to_s + ' sucessfully added!'
    else
        puts 'Movie already exists!'
    end
when 'update'
    puts 'Choose a movie to update:'
    title = gets.chomp.capitalize.to_sym
    if movies[title].nil?
        puts 'No such movie in the library. Please use "add" option!'
    else
        puts 'Type in the new rating:'
        rating = gets.chomp.to_i
        movies[title] = rating
        puts 'The rating has been updated!'
    end
when 'display'
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
when 'delete'
    puts 'Which movie would you like to delete?'
    title = gets.chomp.capitalize.to_sym
    if movies[title].nil?
        puts 'No such movie in your library!'
    else
        movies.delete(title)
    end
else
    puts 'Error!'
end

