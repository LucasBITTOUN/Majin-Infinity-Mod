function onCreate()
	makeAnimatedLuaSprite('skyJP', 'stages/majin-jp/sky', -300, -400)
	addAnimationByPrefix('skyJP', 'sky', 'sky', 24, true)
	setScrollFactor('skyJP', 1.0, 1.0);
	scaleObject('skyJP', 1.0, 1.0);
	
	makeLuaSprite('pillarsBack','stages/majin-jp/pillarsBack', -300, -300)
	setScrollFactor('pillarsBack', 1.0, 1.0);
	scaleObject('pillarsBack', 1.0, 1.0);

	makeLuaSprite('bush', 'stages/majin-jp/bush', -400, 100)
	setScrollFactor('bush', 1.0, 1.0);
    scaleObject('bush', 1.0, 1.0);
 
	makeLuaSprite('ground','stages/majin-jp/ground', -300, 450)
	setScrollFactor('ground', 1.0, 1.0);
	scaleObject('ground', 1.0, 1.0);
 
	makeAnimatedLuaSprite('pillars', 'stages/majin-jp/pillars', 0, -300)
	addAnimationByPrefix('pillars', 'trees mazins front instance', 'trees mazins front instance', 24, true)
	setScrollFactor('pillars', 1.0, 1.0);
    scaleObject('pillars', 1.0, 1.0);
	
	addLuaSprite('skyJP', false);
	addLuaSprite('pillarsBack', false);
	addLuaSprite('bush', false);
	addLuaSprite('ground', false);
	addLuaSprite('pillars', false);
	
	setProperty('skyJP.antialiasing', true)
	setProperty('pillarsBack.antialiasing', true)
	setProperty('bush.antialiasing', true)
	setProperty('ground.antialiasing', true)
	setProperty('pillars.antialiasing', true)
	
	close(true);
end

function onCreatePost()
	precacheImage('skyJP')
	precacheImage('pillarsBack')
	precacheImage('bush')
	precacheImage('ground')
	precacheImage('pillars')
end