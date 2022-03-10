#include '../blendRgba'

vec3 negation(vec3 src, vec3 dst) {
  return vec3(1.0) - abs(vec3(1.0) - src - dst);
}

vec4 negation(vec4 src, vec4 dst) {
  vec3 rgb = negation(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 negation(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = negation(colors[i], dst);

  return dist;
}