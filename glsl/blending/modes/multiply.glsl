#include '../blendRgba'

vec3 multiply(vec3 src, vec3 dst) { return src * dst; }

vec4 multiply(vec4 src, vec4 dst) {
  vec3 rgb = multiply(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 multiply(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = multiply(colors[i], dst);

  return dist;
}