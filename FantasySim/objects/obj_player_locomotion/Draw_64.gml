/// @description DEBUG PURPOSES

var spacing = 16;
var shadow_spacing = 2;
var x_anchor = 16;
var y_anchor = 200;

var strings = ["X Impulse: ", "Y Impulse: "];

var variables = [xImpulse, yImpulse];

for (i=0; i<array_length(strings); i++)
{
	draw_set_color(c_black);
	draw_text(x_anchor-shadow_spacing, y_anchor + (spacing*i)+shadow_spacing, strings[i] + string(variables[i]));
	draw_set_color(c_orange);
	draw_text(x_anchor, y_anchor + (spacing*i), strings[i] + string(variables[i]));
}