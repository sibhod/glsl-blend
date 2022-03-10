#include '../blendRgba'

vec3 phoenix(vec3 src, vec3 dst) {
  return min(src, dst) - max(src, dst) + vec3(1.0);
}

vec4 phoenix(vec4 src, vec4 dst) {
  vec3 rgb = phoenix(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 phoenix(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = phoenix(colors[i], dst);

  return dist;
}