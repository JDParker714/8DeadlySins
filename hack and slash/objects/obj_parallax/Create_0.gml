/// @description Insert description here
// You can write your code in this editor
var layer_id = layer_get_id("graves1");
var background_id = layer_background_get_id(layer_id);
layer_background_blend(background_id,close_gray);

layer_id = layer_get_id("graves2");
background_id = layer_background_get_id(layer_id);
layer_background_blend(background_id,far_gray);