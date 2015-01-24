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
	vec2 position = (gl_FragCoord.xy / resolution.xy) * 2. - 1.;
	// write Total Color:
	float c = clamp (1. - distance (position, vec2 (normedBirdPosition.x + 0.1, normedBirdPosition.y)) * 10., 0., 1.);
	for (float i = 0.; i > -0.5; i-= 0.1)
	{
		c += clamp (1. - distance (position, vec2 (normedBirdPosition.x + i, normedBirdPosition.y)) * 10., 0., 1.);
	}
	c *= 0.6;
	float yDiff = 1. - clamp ((abs(position.y + sin((position.x + mod(time/100., 360.)) * 100.) * 0.01 - normedBirdPosition.y))*90., 0., 1.);
	c += yDiff;
	gl_FragColor = vec4 (outputColor * c, 1.);
	
}