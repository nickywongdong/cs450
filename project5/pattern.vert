#version 110

varying vec3 vColor;
uniform float	uTime;		// "Time", from Animate( )
varying vec2  	vST;		// texture coords

const float PI = 	3.14159265;
const float AMP = 	0.2;		// amplitude
const float W = 	2.;			// frequency

void
main( )
{
	vec4 pos = gl_ModelViewMatrix * gl_Vertex;
	vColor = pos.xyz; // set rgb from xyz!
	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;

	//vST = gl_MultiTexCoord0.st;
	//vec3 vert = gl_Vertex.xyz;
	//vert.x = cos(PI * uTime);
	//vert.y = cos(PI * uTime);
	//vert.z = cos(PI * uTime);
	//gl_Position = gl_ModelViewProjectionMatrix * vec4( vert, 1. );
}