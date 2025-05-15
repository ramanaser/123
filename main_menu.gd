class_name mainmenu
extends Control


@onready var Button1=$MarginContainer/HBoxContainer/VBoxContainer/Button1 as Button
@onready var Button2=$MarginContainer/HBoxContainer/VBoxContainer/Button2 as Button
@onready var start_level =preload("res://main.tscn")as PackedScene

func _ready():
	Button1.button_down.connect(on_start_pressed)
	Button2.button_down.connect(on_exit_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)



func on_exit_pressed() -> void:
	get_tree().quit 
