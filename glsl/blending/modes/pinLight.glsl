#include '../blendRgba'
#include './lighten'
#include './darken'

float pinLight(float src, float dst) {
  return (dst < 0.5) ? darken(src, (2.0 * dst))
                     : lighten(src, (2.0 * (dst - 0.5)));
}

vec3 pinLight(vec3 src, vec3 dst) {
  return vec3(pinLight(src.r, dst.r), pinLight(src.g, dst.g),
              pinLight(src.b, dst.b));
}

vec4 pinLight(vec4 src, vec4 dst) {
  vec3 rgb = pinLight(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 pinLight(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = pinLight(colors[i], dst);

  return dist;
}