extends Control

var is_open: bool = false

func _ready() -> void:
	close()
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("openInventory"):
		if is_open:
			close()
		else:
			open()
	
func open() -> void:
	print_debug("inventory opened")
	visible = true
	is_open = true
	
func close():
	print_debug("inventory closed")
	visible = false
	is_open = false
