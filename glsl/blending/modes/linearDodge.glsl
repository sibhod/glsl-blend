#include '../blendRgba'

float linearDodge(float src, float dst) { return min(src + dst, 1.0); }

vec3 linearDodge(vec3 src, vec3 dst) { return min(src + dst, vec3(1.0)); }

vec4 linearDodge(vec4 src, vec4 dst) {
  vec3 rgb = linearDodge(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 linearDodge(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = linearDodge(colors[i], dst);

  return dist;
}