#include '../blendRgba'

float lighten(float src, float dst) { return max(src, dst); }

vec3 lighten(vec3 src, vec3 dst) {
  return vec3(lighten(src.r, dst.r), lighten(src.g, dst.g),
              lighten(src.b, dst.b));
}

vec4 lighten(vec4 src, vec4 dst) {
  vec3 rgb = lighten(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 lighten(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = lighten(colors[i], dst);

  return dist;
}