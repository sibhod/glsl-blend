#include '../blendRgba'

float substract(float src, float dst) { return max(src + dst - 1.0, 0.0); }

vec3 substract(vec3 src, vec3 dst) {
  return max(src + dst - vec3(1.0), vec3(0.0));
}

vec4 substract(vec4 src, vec4 dst) {
  vec3 rgb = substract(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 substract(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = substract(colors[i], dst);

  return dist;
}