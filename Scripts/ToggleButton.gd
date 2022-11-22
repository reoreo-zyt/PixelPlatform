extends Control

# 拿到动画
# 拿路径可以直接将节点拖拽到脚本里
onready var anim_player = $"../../../../../AnimationPlayer"
onready var sidebar = $"../../.."

# 事件
func _on_ToggleButton_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if sidebar.rect_min_size[0] == 70:
				anim_player.play("sidebar_anim")
			else:
				anim_player.play_backwards("sidebar_anim")
