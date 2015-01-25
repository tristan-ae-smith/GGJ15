#ifdef GL_ES
precision mediump float;
#endif

uniform float time;
uniform vec2 mouse;
uniform vec2 resolution;
uniform vec2 normedBirdPosition;
uniform vec2 radius;

uniform vec3 outputColor;

varying vec3 v;
varying vec3 N;



const float pi = 3.14159265359;


void main( void )
{
    vec2 position = gl_TexCoord[0].ts ;
    gl_FragColor = vec4 (ycol * yDiff1 + xcol * xDiff1 + orb, 1.);
}