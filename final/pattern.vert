#version 110

varying vec3 vColor;
//uniform float	uTime;		// "Time", from Animate( )
varying vec2  	vST;		// texture coords
uniform float uA;
uniform float uB;

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;			// frequency

void
main( )
{
	vec4 pos = gl_ModelViewMatrix * gl_Vertex;

	vST = gl_MultiTexCoord0.st;
	vColor = pos.xyz; // set rgb from xyz!
	gl_Position = gl_ModelViewProjectionMatrix * vec4( uA * (gl_Vertex.x), (gl_Vertex.y) + uB, (gl_Vertex.z), 1. );
}