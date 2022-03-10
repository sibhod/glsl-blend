#include '../blendRgba'

float softLight(float src, float dst) {
  return (dst < 0.5)
             ? (2.0 * src * dst + src * src * (1.0 - 2.0 * dst))
             : (sqrt(src) * (2.0 * dst - 1.0) + 2.0 * src * (1.0 - dst));
}

vec3 softLight(vec3 src, vec3 dst) {
  return vec3(softLight(src.r, dst.r), softLight(src.g, dst.g),
              softLight(src.b, dst.b));
}

vec4 softLight(vec4 src, vec4 dst) {
  vec3 rgb = softLight(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 softLight(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = softLight(colors[i], dst);

  return dist;
}