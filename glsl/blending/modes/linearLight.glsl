#include '../blendRgba'
#include './linearBurn'
#include './linearDodge'

float linearLight(float src, float dst) {
  return dst < 0.5 ? linearBurn(src, (2.0 * dst))
                   : linearDodge(src, (2.0 * (dst - 0.5)));
}

vec3 linearLight(vec3 src, vec3 dst) {
  return vec3(linearLight(src.r, dst.r), linearLight(src.g, dst.g),
              linearLight(src.b, dst.b));
}

vec4 linearLight(vec4 src, vec4 dst) {
  vec3 rgb = linearLight(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 linearLight(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = linearLight(colors[i], dst);

  return dist;
}