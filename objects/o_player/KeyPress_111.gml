/// @description Insert description here
// You can write your code in this editor
global.filename = file_text_open_read(working_directory + "testfile.txt");
var temp = file_text_read_string(global.filename);
file_text_close(global.filename);
var temp2 = json_decode(temp);
show_message(ds_map_find_value(temp2,"maplayer"));