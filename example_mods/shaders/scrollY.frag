#pragma header

vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor

uniform float iTime;
uniform float ySpeed = -0.1;
uniform float xSpeed = 0.1;
uniform float timeMulti = 0.3;

void main()
{
   float time = iTime * timeMulti;
	
   float xCoord = mod(fragCoord.x + time * xSpeed * iResolution.x, iResolution.x);
   float yCoord = mod(fragCoord.y + time * ySpeed * iResolution.y, iResolution.y);
	
   vec2 coord = vec2(xCoord, yCoord);
	
   vec2 uv = coord / iResolution.xy;
   float col = texture(iChannel0, uv).x;

   fragColor = col * texture(iChannel0, uv) + texture(iChannel0, uv);
   fragColor.a *= mix(0.8, 0.3, smoothstep(0.0, iResolution.y, fragCoord.y));
}