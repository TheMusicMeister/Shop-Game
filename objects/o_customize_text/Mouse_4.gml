/// @description Insert description here
// You can write your code in this editor
var next = sprite_get_name(sprite_index);


var obj = instance_create_depth(o_player.x - o_player.x_offset + 64, o_player.y - o_player.y_offset, 0, o_right_arrow);
obj.me = me;

if(me == "Face")
	with(obj)
	{
		var obj2 = instance_create_depth(x,y-64,0,o_right_arrow);
		obj2.me = "Eyes";
		obj2 = instance_create_depth(x,y+64,0,o_right_arrow);
		obj2.me = "Nose";
	}

obj = instance_create_depth(o_player.x - o_player.x_offset - 64, o_player.y - o_player.y_offset, 0, o_left_arrow);
obj.me = me;

if(me == "Face")
	with(obj)
	{
		var obj2 = instance_create_depth(x,y-64,0,o_left_arrow);
		obj2.me = "Eyes";
		obj2 = instance_create_depth(x,y+64,0,o_left_arrow);
		obj2.me = "Nose";
	}

instance_create_depth(512, 480, 0, o_customize_back);

o_player.draw = true;

instance_destroy(o_customize_text);