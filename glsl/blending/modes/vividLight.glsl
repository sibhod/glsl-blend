#include '../blendRgba'
#include './colorBurn'
#include './colorDodge'

float vividLight(float src, float dst) {
  return (dst < 0.5) ? colorBurn(src, (2.0 * dst))
                     : colorDodge(src, (2.0 * (dst - 0.5)));
}

vec3 vividLight(vec3 src, vec3 dst) {
  return vec3(vividLight(src.r, dst.r), vividLight(src.g, dst.g),
              vividLight(src.b, dst.b));
}

vec4 vividLight(vec4 src, vec4 dst) {
  vec3 rgb = vividLight(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 vividLight(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = vividLight(colors[i], dst);

  return dist;
}