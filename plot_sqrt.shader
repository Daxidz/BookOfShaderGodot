shader_type canvas_item;

uniform vec2 texture_size;
uniform vec2 mouse_pos;

const float PI = 3.14159265359;

float plot(vec2 st) {
	return smoothstep(0.005  , 0.0, abs(st.y - st.x));
}

float plot2(vec2 st, float pct) {
	return smoothstep(pct-0.01, pct, st.y) - smoothstep(pct, pct+0.01, st.y);
}

void fragment() {
	vec2 res = 1.0/SCREEN_PIXEL_SIZE;
	vec2 st = UV.xy;
	
	float y = sqrt(st.x);
//	y = log(st.x);
	
	vec3 col = vec3(y);
	float pct = plot(st);
	pct = plot2(st, y);
	col = (1.0-pct)*col+pct*vec3(1.0,0.0,0.0);
	COLOR = vec4(col, 1.0);
}