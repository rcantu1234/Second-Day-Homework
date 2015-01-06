QUESTIONS = [
	{
		:name => "What is the command to create a new git repo",
		:answers => [
			"git new",
			"git init",
			"new git repo",
			"create-github"
		],
		:correct_answer => 1
	},
	{
		:name => "What is my favorite sushi", 
		:answers => [
			"Cali Roll",
			"Spicy Tuna Roll",
			"Sweet Potato Roll",
			"Tokyo Roll"
			],
			:correct_answer => 1
	},
	{
		:name => "How many chairs are in this room",
		:answers => [
			10, 
			1, 
			11,
			9
		],
			:correct_answer => 2
	},
	{
		:name => "How many months does it take to complete the Ruby on Rails program at The Iron Yard",
		:answers => [
		1, 
		2, 
		3, 
		4
	   ],
			:correct_answer => 2
	},
	{
		:name => "How many days in a year",
		:answers => [
			200,
			300, 
			365,
			500
		],
		:correct_answer => 2
	}
]

puts "Welcome to the Quiz Show!".upcase

correct_answers = 0

QUESTIONS.shuffle.each do |question|
	puts "-" * 25
	puts question [:name] + "? :"
	question [:answers].each_with_index do |answer, index|
		puts "#{index + 1}) #{answer}"
	end
	print "(1-4) -> "
	user_answer = gets.chomp
	if user_answer.to_i == question[:correct_answer] + 1
		puts "CORRECT"
		correct_answers += 1
	else
		puts "INCORRECT"
		puts "\7"		
	end
end

Percentage = ((correct_answers.to_f / QUESTIONS.count) * 100)

puts "You got #{correct_answers} out of #{QUESTIONS.count} correct."
puts "Percentage of correct answers is: #{Percentage}!"