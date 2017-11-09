#version 110

uniform float	uTime;		// "Time", from Animate( )
varying vec2  	vST;		// texture coords
varying vec3 vColor;

void
main( )
{
	vec3 myColor = vec3( 1., 0., 0. );
	//if( ??? )
	//{
	//	myColor = vec3( 1., 0., 0. );
	//}
	gl_FragColor = vec4( vColor,  1. );
}