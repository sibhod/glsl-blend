#include '../blendRgba'

float colorBurn(float src, float dst) {
  return (dst == 0.0) ? dst : max((1.0 - ((1.0 - src) / dst)), 0.0);
}

vec3 colorBurn(vec3 src, vec3 dst) {
  return vec3(colorBurn(src.r, dst.r), colorBurn(src.g, dst.g),
              colorBurn(src.b, dst.b));
}

vec4 colorBurn(vec4 src, vec4 dst) {
  vec3 rgb = colorBurn(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 colorBurn(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = colorBurn(colors[i], dst);

  return dist;
}