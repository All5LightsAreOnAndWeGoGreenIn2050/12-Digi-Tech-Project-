extends Node

@onready var answer_checker = $AnswerChecker
@onready var timer: Timer = $Timer

var questions = [
{
	"question": "What is the German word for Apple?",
	"options": ["Aromatisch", "Herbst", "Künstler", "Äpfel"],
	"correct_index": 3
},
{
	"question": "Who wrote the play 'Romeo and Juliet'?",
	"options": ["Charles Dickens", "William Shakespeare", "Jane Austen", "Mark Twain"],
	"correct_index": 1
},
{
	"question": "Which TV show features the character Walter White?",
	"options": ["Breaking Bad", "The Sopranos", "Mad Men", "Better Call Saul"],
	"correct_index": 0
},
{
	"question": "Who is known as the 'King of Pop'?",
	"options": ["Elvis Presley", "Michael Jackson", "Prince", "Freddie Mercury"],
	"correct_index": 1
},
{
	"question": "Which movie won the Oscar for Best Picture in 1998?",
	"options": ["Titanic", "Shakespeare in Love", "Saving Private Ryan", "The Truman Show"],
	"correct_index": 1
},
{
	"question": "Which country hosted the 2016 Summer Olympics?",
	"options": ["China", "Brazil", "United Kingdom", "Russia"],
	"correct_index": 1
},
{
	"question": "Who was the first President of the United States?",
	"options": ["Abraham Lincoln", "George Washington", "Thomas Jefferson", "John Adams"],
	"correct_index": 1
},
{
	"question": "What is the smallest planet in our solar system?",
	"options": ["Mercury", "Mars", "Venus", "Pluto"],
	"correct_index": 0
},
{
	"question": "In 'The Hobbit', what type of creature is Smaug?",
	"options": ["Dragon", "Goblin", "Troll", "Elf"],
	"correct_index": 0
},
{
	"question": "What year did the Berlin Wall fall?",
	"options": ["1985", "1987", "1989", "1991"],
	"correct_index": 2
},
{
	"question": "Which artist painted the Mona Lisa?",
	"options": ["Vincent van Gogh", "Leonardo da Vinci", "Pablo Picasso", "Claude Monet"],
	"correct_index": 1
},
{
	"question": "What is the capital city of Japan?",
	"options": ["Seoul", "Kyoto", "Tokyo", "Osaka"],
	"correct_index": 2
},
{
	"question": "Which television show had the catchphrase 'Winter is Coming'?",
	"options": ["Game of Thrones", "Vikings", "The Witcher", "The Crown"],
	"correct_index": 0
},
{
	"question": "Who sang the 2014 hit 'Shake It Off'?",
	"options": ["Katy Perry", "Adele", "Taylor Swift", "Rihanna"],
	"correct_index": 2
},
{
	"question": "Which film features a character named Jack Dawson?",
	"options": ["Inception", "Titanic", "The Great Gatsby", "The Notebook"],
	"correct_index": 1
},
{
	"question": "In tennis, what is the term for a score of zero?",
	"options": ["Love", "Ace", "Fault", "Deuce"],
	"correct_index": 0
},
{
	"question": "Who discovered penicillin?",
	"options": ["Alexander Fleming", "Marie Curie", "Louis Pasteur", "Isaac Newton"],
	"correct_index": 0
},
{
	"question": "Which planet is known as the Red Planet?",
	"options": ["Venus", "Mars", "Jupiter", "Saturn"],
	"correct_index": 1
},
{
	"question": "In literature, who created Sherlock Holmes?",
	"options": ["Agatha Christie", "Arthur Conan Doyle", "Bram Stoker", "H.G. Wells"],
	"correct_index": 1
},
{
	"question": "Which war ended with the Treaty of Versailles?",
	"options": ["World War I", "World War II", "The Cold War", "The Crimean War"],
	"correct_index": 0
},
{
	"question": "What is the longest river in the world?",
	"options": ["Nile", "Amazon", "Yangtze", "Mississippi"],
	"correct_index": 1
},
{
	"question": "Which singer is known as 'Queen Bey'?",
	"options": ["Beyoncé", "Nicki Minaj", "Alicia Keys", "Lady Gaga"],
	"correct_index": 0
},
{
	"question": "Who directed the movie 'Jurassic Park'?",
	"options": ["James Cameron", "Steven Spielberg", "George Lucas", "Ridley Scott"],
	"correct_index": 1
},
{
	"question": "In football, how many players are on the field for one team?",
	"options": ["9", "10", "11", "12"],
	"correct_index": 2
},
{
	"question": "What is the capital city of Canada?",
	"options": ["Toronto", "Vancouver", "Ottawa", "Montreal"],
	"correct_index": 2
},
{
	"question": "Who wrote 'Pride and Prejudice'?",
	"options": ["Emily Brontë", "Jane Austen", "Charlotte Brontë", "Mary Shelley"],
	"correct_index": 1
},
{
	"question": "Which element has the chemical symbol 'O'?",
	"options": ["Oxygen", "Osmium", "Opium", "Oxide"],
	"correct_index": 0
},
{
	"question": "Which city is home to the Eiffel Tower?",
	"options": ["Rome", "London", "Berlin", "Paris"],
	"correct_index": 3
},
{
	"question": "Who played the character of Forrest Gump?",
	"options": ["Robin Williams", "Tom Hanks", "Matt Damon", "Kevin Costner"],
	"correct_index": 1
},
{
	"question": "Which country invented pizza?",
	"options": ["France", "Italy", "Greece", "Spain"],
	"correct_index": 1
},
{
	"question": "What is the main ingredient in guacamole?",
	"options": ["Avocado", "Tomato", "Lettuce", "Cucumber"],
	"correct_index": 0
},
{
	"question": "Who painted 'The Starry Night'?",
	"options": ["Vincent van Gogh", "Claude Monet", "Salvador Dalí", "Pablo Picasso"],
	"correct_index": 0
},
{
	"question": "Which TV sitcom features the characters Rachel Green and Monica Geller",
	"options": ["Friends", "How I Met Your Mother", "The Office", "Seinfeld"],
	"correct_index": 0
},
{
	"question": "Which famous scientist developed the theory of relativity?",
	"options": ["Isaac Newton", "Albert Einstein", "Nikola Tesla", "Galileo Galilei"],
	"correct_index": 1
},
{
	"question": "Which sport is known as the 'king of sports'?",
	"options": ["Cricket", "Basketball", "Soccer", "Tennis"],
	"correct_index": 2
},
{
	"question": "What is the capital of Australia?",
	"options": ["Sydney", "Melbourne", "Canberra", "Perth"],
	"correct_index": 2
},
{
	"question": "Who wrote 'The Great Gatsby'?",
	"options": ["F. Scott Fitzgerald", "Ernest Hemingway", "John Steinbeck", "George Orwell"],
	"correct_index": 0
},
{
	"question": "Which company created the iPhone?",
	"options": ["Microsoft", "Apple", "Samsung", "Google"],
	"correct_index": 1
},
{
	"question": "What is the largest mammal on Earth?",
	"options": ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
	"correct_index": 1
},
{
	"question": "Which continent is known as the 'Dark Continent'?",
	"options": ["Asia", "South America", "Africa", "Australia"],
	"correct_index": 2
},
{
	"question": "Who directed the movie 'Inception'?",
	"options": ["Christopher Nolan", "Martin Scorsese", "Quentin Tarantino", "David Fincher"],
	"correct_index": 0
},
{
	"question": "Which language has the most native speakers in the world?",
	"options": ["English", "Mandarin Chinese", "Spanish", "Hindi"],
	"correct_index": 1
},
{
	"question": "What is the chemical symbol for gold?",
	"options": ["Au", "Ag", "Gd", "Go"],
	"correct_index": 0
},
{
	"question": "Who was the first man to step on the Moon?",
	"options": ["Buzz Aldrin", "Yuri Gagarin", "Neil Armstrong", "Michael Collins"],
	"correct_index": 2
},
{
	"question": "Which Disney movie features a talking snowman named Olaf?",
	"options": ["Tangled", "Frozen", "Moana", "Encanto"],
	"correct_index": 1
},
{
	"question": "What is the national sport of Japan?",
	"options": ["Karate", "Judo", "Sumo Wrestling", "Baseball"],
	"correct_index": 2
},
{
	"question": "Who wrote the Harry Potter series?",
	"options": ["J.K. Rowling", "J.R.R. Tolkien", "Suzanne Collins", "Stephen King"],
	"correct_index": 0
},
{
	"question": "Which country gifted the Statue of Liberty to the United States?",
	"options": ["France", "England", "Germany", "Spain"],
	"correct_index": 0
},
{
	"question": "What is the capital of Egypt?",
	"options": ["Cairo", "Alexandria", "Luxor", "Giza"],
	"correct_index": 0
},
{
	"question": "Who won Survivor: Redemption Island?",
	"options": ["Cody Calafiore", "Rob Mariano", "Bryce Leatherwood", "Bates Battaglia"],
	"correct_index": 1
}
]

var rng = RandomNumberGenerator.new()
var current_question = 0

func _ready():
	show_random_question()
	# Check if there’s a message to show
	if Gamescore.last_answer_message != "":
		answer_checker.text = Gamescore.last_answer_message
		answer_checker.visible = true
		timer.start(1.5)
		Gamescore.last_answer_message = ""  # clear it so it doesn’t repeat

func _on_Timer_timeout():
	answer_checker.visible = false
	
func show_random_question():
	var random_index = rng.randi_range(0, questions.size() - 1)
	current_question = random_index
	show_question(current_question)

func show_question(index):
	var q = questions[index]
	$Question.text = q["question"]
	$A.text = q["options"][0]
	$B.text = q["options"][1]
	$C.text = q["options"][2]
	$D.text = q["options"][3]
	
	
func check_answer(selected_index):
	var correct_index = questions[current_question]["correct_index"]

	if selected_index == correct_index:
		print("Correct!")
		Gamescore.last_answer_message = "Correct!"
		Gamescore.increase_score()
	else:
		print("Wrong!")
		Gamescore.last_answer_message = "Wrong!"
		Gamescore.reset_score()

	# Immediately go to next level
	Levels.go_to_next_level()

	# Then start a short timer to hide the message
	timer.start(1.5)
	
func _on_answer_a_body_entered(body):
	if body.name == "Player":
		check_answer(0) 
		
func _on_answer_b_body_entered(body):
	if body.name == "Player":
		check_answer(1) 

func _on_answer_c_body_entered(body):
	if body.name == "Player":
		check_answer(2)

func _on_answer_d_body_entered(body):
	if body.name == "Player":
		check_answer(3)
		
func _process(delta):
	$Score.text = "Score: %d" % Gamescore.score
	
