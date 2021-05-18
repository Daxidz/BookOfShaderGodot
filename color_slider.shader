shader_type canvas_item;

uniform float x_split = 0.5;
uniform float speed = 1.0;

void fragment() {
	if (UV.x > x_split)
		COLOR = vec4(abs(cos(TIME*speed)), abs(sin(TIME)), abs(atan(TIME)), 1.0);
}