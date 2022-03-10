#include '../blendRgba'

vec3 difference(vec3 src, vec3 dst) { return abs(base - dst); }

vec4 difference(vec4 src, vec4 dst) {
  vec3 rgb = difference(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 difference(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = difference(colors[i], dst);

  return dist;
}