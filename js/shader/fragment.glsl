// varying vec2 vUv;
varying float vNoise;

void main()	{
	// gl_FragColor = vec4(1., 0., 0.0, 1.);

	// vec2 newUV = (vUv - vec2(0.5))*resolution.zw + vec2(0.5);	

	vec3 color1 = vec3(1., 0., 0.);
	vec3 color2 = vec3(1., 1., 1.);
	vec3 finalColor = mix(color1, color2, 0.5 * (vNoise + 1.));	

	gl_FragColor = vec4(finalColor, 1.);
}