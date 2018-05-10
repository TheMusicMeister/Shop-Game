///@function ds_nested_get
///@arg data_structure
///@arg key1
///@arg key2
///@arg ...

var _m = argument[0];
for (var i = 1; i < argument_count; ++i) {

    //If the key is a real, then the current level is a list.  Otherwise it is a map.
    if (is_real(argument[i]))
        _m = ds_list_find_value(_m, argument[i]);
    else if (ds_exists(_m, ds_type_map))
        _m = ds_map_find_value(_m, argument[i]);
    else {
        show_error("ERROR! Missing inner data structure!", false);
    }
}

//return nested value
return _m;