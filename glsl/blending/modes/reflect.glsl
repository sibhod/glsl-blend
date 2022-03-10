#include '../blendRgba'

float reflect(float src, float dst) {
  return (dst == 1.0) ? dst : min(src * src / (1.0 - dst), 1.0);
}

vec3 reflect(vec3 src, vec3 dst) {
  return vec3(reflect(src.r, dst.r), reflect(src.g, dst.g),
              reflect(src.b, dst.b));
}

vec4 reflect(vec4 src, vec4 dst) {
  vec3 rgb = reflect(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 reflect(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = reflect(colors[i], dst);

  return dist;
}