extends RigidBody2D

# onready var globalVariables = get_node("/root/GlobalInit")

var array = [
	"res://assets/tarot/major_arcana/ar00.jpg", 
	"res://assets/tarot/major_arcana/ar01.jpg", 
	"res://assets/tarot/major_arcana/ar02.jpg", 
	"res://assets/tarot/major_arcana/ar03.jpg",
	"res://assets/tarot/major_arcana/ar04.jpg",
	"res://assets/tarot/major_arcana/ar05.jpg", 
	"res://assets/tarot/major_arcana/ar06.jpg", 
	"res://assets/tarot/major_arcana/ar07.jpg", 
	"res://assets/tarot/major_arcana/ar08.jpg",
	"res://assets/tarot/major_arcana/ar09.jpg",	
	"res://assets/tarot/major_arcana/ar10.jpg", 
	"res://assets/tarot/major_arcana/ar11.jpg", 
	"res://assets/tarot/major_arcana/ar12.jpg", 
	"res://assets/tarot/major_arcana/ar13.jpg",
	"res://assets/tarot/major_arcana/ar14.jpg",
	"res://assets/tarot/major_arcana/ar15.jpg", 
	"res://assets/tarot/major_arcana/ar16.jpg", 
	"res://assets/tarot/major_arcana/ar17.jpg", 
	"res://assets/tarot/major_arcana/ar18.jpg",
	"res://assets/tarot/major_arcana/ar19.jpg",
	"res://assets/tarot/major_arcana/ar20.jpg",
	"res://assets/tarot/major_arcana/ar21.jpg",
	"res://assets/tarot/cups/cu02.jpg",
	"res://assets/tarot/cups/cu03.jpg",
	"res://assets/tarot/cups/cu04.jpg",
	"res://assets/tarot/cups/cu05.jpg",
	"res://assets/tarot/cups/cu06.jpg",
	"res://assets/tarot/cups/cu07.jpg",
	"res://assets/tarot/cups/cu08.jpg",
	"res://assets/tarot/cups/cu09.jpg",
	"res://assets/tarot/cups/cu10.jpg",
	"res://assets/tarot/cups/cuac.jpg",
	"res://assets/tarot/cups/cuki.jpg",
	"res://assets/tarot/cups/cukn.jpg",
	"res://assets/tarot/cups/cupa.jpg",
	"res://assets/tarot/cups/cuqu.jpg",
	"res://assets/tarot/pentacles/pe02.jpg",
	"res://assets/tarot/pentacles/pe03.jpg",
	"res://assets/tarot/pentacles/pe04.jpg",
	"res://assets/tarot/pentacles/pe05.jpg",
	"res://assets/tarot/pentacles/pe06.jpg",
	"res://assets/tarot/pentacles/pe07.jpg",
	"res://assets/tarot/pentacles/pe08.jpg",
	"res://assets/tarot/pentacles/pe09.jpg",
	"res://assets/tarot/pentacles/pe10.jpg",
	"res://assets/tarot/pentacles/peac.jpg",
	"res://assets/tarot/pentacles/peki.jpg",
	"res://assets/tarot/pentacles/pekn.jpg",
	"res://assets/tarot/pentacles/pepa.jpg",
	"res://assets/tarot/pentacles/pequ.jpg",
	"res://assets/tarot/swords/sw02.jpg",
	"res://assets/tarot/swords/sw03.jpg",
	"res://assets/tarot/swords/sw04.jpg",
	"res://assets/tarot/swords/sw05.jpg",
	"res://assets/tarot/swords/sw06.jpg",
	"res://assets/tarot/swords/sw07.jpg",
	"res://assets/tarot/swords/sw08.jpg",
	"res://assets/tarot/swords/sw09.jpg",
	"res://assets/tarot/swords/sw10.jpg",
	"res://assets/tarot/swords/swac.jpg",
	"res://assets/tarot/swords/swki.jpg",
	"res://assets/tarot/swords/swkn.jpg",
	"res://assets/tarot/swords/swpa.jpg",
	"res://assets/tarot/swords/swqu.jpg",
	"res://assets/tarot/wands/wa02.jpg",
	"res://assets/tarot/wands/wa03.jpg",
	"res://assets/tarot/wands/wa04.jpg",
	"res://assets/tarot/wands/wa05.jpg",
	"res://assets/tarot/wands/wa06.jpg",
	"res://assets/tarot/wands/wa07.jpg",
	"res://assets/tarot/wands/wa08.jpg",
	"res://assets/tarot/wands/wa09.jpg",
	"res://assets/tarot/wands/wa10.jpg",
	"res://assets/tarot/wands/waac.jpg",
	"res://assets/tarot/wands/waki.jpg",
	"res://assets/tarot/wands/wakn.jpg",
	"res://assets/tarot/wands/wapa.jpg",
	"res://assets/tarot/wands/waqu.jpg"]

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var my_card = (randi() % 77)
	
	if Globals.cardsUsed.has(my_card):
		while Globals.cardsUsed.has(my_card):
			my_card = (randi() % 77)
	
	$spr_card.texture = load(array[my_card])
	Globals.cardsUsed.append(my_card)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
