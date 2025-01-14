function onCreate()
	makeLuaSprite('sky', 'stages/majin/sky', -600, -200);
	setScrollFactor('sky', 0.9, 0.9);
	scaleObject('sky', 1, 1);
	
	makeLuaSprite('bush1', 'stages/majin/bush1', -42, 171);
	setScrollFactor('bush1', 1, 1);
	scaleObject('bush1', 1, 1);
	
	makeAnimatedLuaSprite('majinbackBG', 'stages/majin/majinbackBG', 182, -100);
	addAnimationByPrefix('majinbackBG', 'MajinBop2', 'MajinBop2', 24, true)
	setScrollFactor('majinbackBG', 1, 1);
    scaleObject('majinbackBG', 1, 1);
	
	makeLuaSprite('bush2', 'stages/majin/bush2', 132, 354);
	setScrollFactor('bush2', 1, 1);
	scaleObject('bush2', 1, 1);

	makeAnimatedLuaSprite('majinfrontBG', 'stages/majin/majinfrontBG', -169, -167);
	addAnimationByPrefix('majinfrontBG', 'MajinBop1', 'MajinBop1', 24, true)
	setScrollFactor('majinfrontBG', 1, 1);
    scaleObject('majinfrontBG', 1, 1);
	
	makeLuaSprite('groundBG', 'stages/majin/groundBG', -340, 660);
	setScrollFactor('groundBG', 1, 1);
	scaleObject('groundBG', 1, 1);
	
	makeAnimatedLuaSprite('majinFG1', 'stages/majin/majinFG1', -393, 871);
	addAnimationByPrefix('majinFG1', 'majin front bopper2', 'majin front bopper2', 24, true)
	setScrollFactor('majinFG1', 1, 1);
    scaleObject('majinFG1', 1, 1);
	
	makeAnimatedLuaSprite('majinFG2', 'stages/majin/majinFG2', 1126, 903);
	addAnimationByPrefix('majinFG2', 'majin front bopper1', 'majin front bopper1', 24, true)
	setScrollFactor('majinFG2', 1, 1);
    scaleObject('majinFG2', 1, 1);
	
	addLuaSprite('sky', false);
	addLuaSprite('bush1', false);
	addLuaSprite('majinbackBG', false);
	addLuaSprite('bush2', false);
	addLuaSprite('majinfrontBG', false);
	addLuaSprite('groundBG', false);
	addLuaSprite('majinFG1', true);
	addLuaSprite('majinFG2', true);
	
	setProperty('sky.antialiasing', true)
	setProperty('bush1.antialiasing', true)
	setProperty('majinbackBG.antialiasing', true)
	setProperty('bush2.antialiasing', true)
	setProperty('majinfrontBG.antialiasing', true)
	setProperty('groundBG.antialiasing', true)
	setProperty('majinFG1.antialiasing', true)
	setProperty('majinFG2.antialiasing', true)
	
	close(true);
end

function onCreatePost()
	precacheImage('sky')
	precacheImage('bush1')
	precacheImage('majinbackBG')
	precacheImage('bush2')
	precacheImage('majinfrontBG')
	precacheImage('groundBG')
	precacheImage('majinFG1')
	precacheImage('majinFG2')
end