

puts "Welcome to the Guessing Game"
puts "-" * 28

print "Enter a number: "
users_choice = gets.chomp

number_guesses = 0

random_number = 1 + rand(100)

while users_choice.to_i != random_number do
	if  users_choice.to_i < random_number
		puts "Your guess is too low!  Please make another guess"
		print "Enter a number: "
		users_choice = gets.chomp
		number_guesses += 1
	elsif users_choice.to_i > random_number
		puts "Your guess is too high!  Please make another guess!"
		print "Enter a number: "
		users_choice = gets.chomp
		number_guesses += 1
	end
end
		puts "You have guessed the number correctly after #{number_guesses + 1} guesses.  You win!"
	