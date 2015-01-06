puts "Welcome to the Guessing Game"
puts "-" * 28

number_guesses = 0
random_number = rand(100)
print "Pick a number between 0 - 100: "
users_choice = gets.chomp

while number_guesses < 5 do
	puts "The computers number is #{random_number}."
	print "Is it too high or too low? "
	users_choice = gets.chomp
	if  users_choice.downcase == "h" 
		puts "Your guess is too high!  Please make another guess"
		random_number = rand(0..random_number)
		number_guesses += 1
	elsif users_choice.downcase == "l"
		puts "Your guess is too low!  Please make another guess!"
		random_number = rand(random_number..100)
		number_guesses += 1
	elsif users_choice == random_number
		puts "You have guessed the number correctly after #{number_guesses + 1} guesses.  You win!"
		
	end
end
	puts "I'm sorry, but you have exceeded the maximim guesses!"

