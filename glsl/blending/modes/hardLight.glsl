#include '../blendRgba'
#include './overlay'

vec3 hardLight(vec3 src, vec3 dst) { return overlay(src, dst); }

vec4 hardLight(vec4 src, vec4 dst) {
  vec3 rgb = hardLight(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 hardLight(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = hardLight(colors[i], dst);

  return dist;
}