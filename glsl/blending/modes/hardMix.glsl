#include '../blendRgba'
#include './vividLight'

float hardMix(float src, float dst) {
  return (vividLight(src, dst) < 0.5) ? 0.0 : 1.0;
}

vec3 hardMix(vec3 src, vec3 dst) {
  return vec3(hardMix(src.r, dst.r), hardMix(src.g, dst.g),
              hardMix(src.b, dst.b));
}

vec4 hardMix(vec4 src, vec4 dst) {
  vec3 rgb = hardMix(src.rgb, dst.rgb);
  return blendRgba(rgb, src, dst);
}

vec4 hardMix(vec4[] colors) {
  int len = colors.getLength();
  vec4 dst = len > 0 ? colors[1] : vec4(0.0);
  for (int i = 1; i < len; i++)
    dst = hardMix(colors[i], dst);

  return dist;
}