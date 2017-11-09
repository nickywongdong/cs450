#version 110

uniform float	uTime;		// "Time", from Animate( )
varying vec2  	vST;		// texture coords
varying vec3 vColor;


const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;			// frequency


void
main( )
{
	vec3 myColor = vec3( 1., cos(uTime * PI), 0. );
	
	gl_FragColor = vec4( myColor,  1. );
}