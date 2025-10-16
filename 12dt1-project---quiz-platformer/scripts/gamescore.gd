extends Node

var last_answer_message: String = ""
var last_death_message: String = ""
var score: int = 0

func reset_score():
	score = 0

func increase_score():
	score += 1
