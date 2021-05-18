shader_type canvas_item;

uniform vec2 texture_size;
uniform vec2 mouse_pos;
void fragment() {
	vec2 res = 1.0/SCREEN_PIXEL_SIZE;
	vec2 st = UV.xy;
	
	vec2 mouse_normal = mouse_pos*SCREEN_PIXEL_SIZE;
	
	COLOR = vec4(st.x*mouse_normal.x, st.y*mouse_normal.y, 0.0, 1.0);
}