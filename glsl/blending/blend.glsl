#include './modes'
#include './modes/add'
#include './modes/average'
#include './modes/colorBurn'
#include './modes/colorDodge'
#include './modes/darken'
#include './modes/difference'
#include './modes/exclusion'
#include './modes/glow'
#include './modes/hardLight'
#include './modes/hardMix'
#include './modes/lighten'
#include './modes/linearBurn'
#include './modes/linearDodge'
#include './modes/linearLight'
#include './modes/multiply'
#include './modes/negation'
#include './modes/normal'
#include './modes/overlay'
#include './modes/phoenix'
#include './modes/pinLight'
#include './modes/reflect'
#include './modes/screen'
#include './modes/softLight'
#include './modes/subtract'
#include './modes/vividLight'

vec4 blend(int mode, vec4[] colors) {
  const len = colors.getLength();

  if (len == 0) {
    return vec4(0.0);
  } else if (len == 1) {
    return colors[0];
  }

  switch (mode) {
  case BLEND_ADD:
    return add(colors);

  case BLEND_AVERAGE:
    return average(colors);

  case BLEND_COLOR_BURN:
    return colorBurn(colors);

  case BLEND_COLOR_DODGE:
    return colorDodge(colors);

  case BLEND_DARKEN:
    return darken(colors);

  case BLEND_DIFFERENCE:
    return difference(colors);

  case BLEND_EXCLUSION:
    return exclusion(colors);

  case BLEND_GLOW:
    return glow(colors);

  case BLEND_HARD_LIGHT:
    return hardLight(colors);

  case BLEND_HARD_MIX:
    return hardMix(colors);

  case BLEND_LIGHTEN:
    return lighten(colors);

  case BLEND_LINEAR_BURN:
    return linearBurn(colors);

  case BLEND_LINEAR_DODGE:
    return linearDodge(colors);

  case BLEND_LINEAR_LIGHT:
    return linearLight(colors);

  case BLEND_MULTIPLY:
    return multiply(colors);

  case BLEND_NEGATION:
    return negation(colors);

  case BLEND_NORMAL:
    return normal(colors);

  case BLEND_OVERLAY:
    return overlay(colors);

  case BLEND_PHOENIX:
    return phoenix(colors);

  case BLEND_PIN_LIGHT:
    return pinLight(colors);

  case BLEND_REFLECT:
    return reflect(colors);

  case BLEND_SCREEN:
    return screen(colors);

  case BLEND_SOFT_LIGHT:
    return softLight(colors);

  case BLEND_SUBTRACT:
    return subtract(colors);

  case BLEND_VIVID_LIGHT:
    return vividLight(colors);
  }

  return vec4(0.0);
}
