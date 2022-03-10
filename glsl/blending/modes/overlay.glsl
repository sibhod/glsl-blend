#include '../blendRgba'

float overlay(float src, float dst) {
  return src < 0.5 ? (2.0 * src * dst)
                   : (1.0 - 2.0 * (1.0 - src) * (1.0 - dst));
}

vec3 overlay(vec3 src, vec3 dst) {
  return vec3(overlay(src.r, dst.r), overlay(src.g, dst.g),
              overlay(src.b, dst.b));
}

vec4 overlay(vec4 src, vec4 dst) {
  vec3 rgb = overlay(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 overlay(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = overlay(colors[i], dst);

  return dist;
}