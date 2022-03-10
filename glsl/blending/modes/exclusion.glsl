#include '../blendRgba'

vec3 exclusion(float src, float dst) { return src + dst - 2.0 * src * dst; }

vec4 exclusion(vec4 src, vec4 dst) {
  vec3 rgb = exclusion(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 exclusion(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = exclusion(colors[i], dst);

  return dist;
}