extends Control

# TODO: 有没有更好的拿路径的方法，支持实时更改路径？这种方式拿取路径当节点改变时就会导致无法同步更新，难以维护
# 拿到动画
# 拿路径可以直接将节点拖拽到脚本里
onready var anim_player = $"../../../../../AnimationPlayer"
onready var sidebar = $"../../.."
onready var content = $Content

# 事件
func _on_ToggleButton_gui_input(event):
	if event is InputEventMouseButton:
		if event.is_pressed():
			if sidebar.rect_min_size[0] == 70:
				anim_player.play("sidebar_anim")
				content.texture.region = Rect2(165, 166, 22, 22)
			else:
				anim_player.play_backwards("sidebar_anim")
