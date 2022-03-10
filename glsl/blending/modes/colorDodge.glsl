#include '../blendRgba'

float colorDodge(float src, float dst) {
  return (dst == 1.0) ? dst : min(src / (1.0 - dst), 1.0);
}

vec3 colorDodge(vec3 src, vec3 dst) {
  return vec3(colorDodge(src.r, dst.r), colorDodge(src.g, dst.g),
              colorDodge(src.b, dst.b));
}

vec4 colorDodge(vec4 src, vec4 dst) {
  vec3 rgb = colorDodge(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 colorDodge(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = colorDodge(colors[i], dst);

  return dist;
}