// A blend util that essentially runs a GL_SRC_ALPHA -> GL_ONE_MINUS_SRC_ALPHA
// blend, with a GL_FUNC_ADD equation.
vec4 blendRgba = (vec3 color, vec4 src, vec4 dst) {
  return (vec4(color, src.a) * src.a + dst * (1.0 - src.a));
}
