#include '../blendRgba'
#include './reflect'

vec3 glow(vec3 src, vec3 dst) { return reflect(src, dst); }

vec4 glow(vec4 src, vec4 dst) {
  vec3 rgb = glow(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 glow(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = glow(colors[i], dst);

  return dist;
}