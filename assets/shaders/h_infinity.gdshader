shader_type canvas_item;

uniform sampler2D texture;
uniform float speed = 1.0;

void fragment() {
    vec2 uv = UV;
    uv.x += TIME * speed;
    COLOR = texture(texture, fract(uv));
}
