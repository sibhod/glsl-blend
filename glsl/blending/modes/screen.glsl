#include '../blendRgba'

float screen(float src, float dst) { return 1.0 - ((1.0 - src) * (1.0 - dst)); }

vec3 screen(vec3 src, vec3 dst) {
  return vec3(screen(src.r, dst.r), screen(src.g, dst.g), screen(src.b, dst.b));
}

vec4 screen(vec4 src, vec4 dst) {
  vec3 rgb = screen(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 screen(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = screen(colors[i], dst);

  return dist;
}