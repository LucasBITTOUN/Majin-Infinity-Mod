function onCreate()

	makeLuaSprite('arena-stage','arena-bg',-700,-200)
	addLuaSprite('arena-stage',false);

	makeAnimatedLuaSprite('ppl','arena-characters',-700,155)
	addAnimationByPrefix('ppl', 'animate', 'bg-characters', 24, false);
	addLuaSprite('ppl',false);

	makeLuaSprite('rail','railing',-700,325)
	addLuaSprite('rail',false)

end

function onBeatHit()

if curBeat % 2 == 0 then
objectPlayAnimation('ppl', 'animate', false);
end

end