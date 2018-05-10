/// @description Insert description here
// You can write your code in this editor


global.filename = file_text_open_write(working_directory + "testfile.txt");
file_text_write_string(global.filename,json_encode(customization));
file_text_close(global.filename);