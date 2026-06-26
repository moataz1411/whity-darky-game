extends Node
var score=0
@onready var mainlabel: Label = $mainlabel

func add_point():
	score +=1
	mainlabel.text="U Collected " + str(score) +  " coins."
	
