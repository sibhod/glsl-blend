#include '../blendRgba'

float darken(float src, float dst) { return min(src, dst); }

vec3 darken(vec3 src, vec3 dst) {
  return vec3(darken(src.r, dst.r), darken(src.g, dst.g), darken(src.b, dst.b));
}

vec4 darken(vec4 src, vec4 dst) {
  vec3 rgb = darken(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 darken(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = darken(colors[i], dst);

  return dist;
}