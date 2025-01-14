function onCreate() 
	
	makeLuaSprite('background', 'stages/endeavors/background', -1110, -680);
	setScrollFactor('background', 1, 1);
	scaleObject('background', 3.5, 3.5);
	setProperty('background.alpha', 0);

	makeLuaSprite('groundCD', 'stages/endeavors/ground', -550, 500);
	setScrollFactor('groundCD', 1, 1);
	scaleObject('groundCD', 4, 4);
	setProperty('groundCD.alpha', 0);

	makeAnimatedLuaSprite('majinWtf', 'stages/endeavors/majinWtf', 50, -95);
	addAnimationByPrefix('majinWtf','Fem Majin idle', 'Fem Majin idle', 23, true);
	setScrollFactor('majinWtf', 1, 1);
	scaleObject('majinWtf', 1.5, 1.5);
	setProperty('majinWtf.alpha', 0);

	makeAnimatedLuaSprite('majinSign', 'stages/endeavors/majinSign', 530, -550);
	addAnimationByPrefix('majinSign', 'dance', 'dance', 23, true);
	setScrollFactor('majinSign', 1, 1);
	scaleObject('majinSign', 0.5, 0.5);
	setProperty('majinSign.alpha', 0);

	makeAnimatedLuaSprite('majinTwins', 'stages/endeavors/majinTwins', 1190, -350);
	addAnimationByPrefix('majinTwins', 'Twins dance', 'Twins dance', 23, true);
	setScrollFactor('majinTwins', 1, 1);
	scaleObject('majinTwins', 0.5, 0.5);
	setProperty('majinTwins.alpha', 0);

	makeAnimatedLuaSprite('majinSwag', 'stages/endeavors/majinSwag', -690, -350);
	addAnimationByPrefix('majinSwag', 'sunglass dance', 'sunglass dance', 23, true);
	setScrollFactor('majinSwag', 1, 1);
	scaleObject('majinSwag', 0.5, 0.5);
	setProperty('majinSwag.alpha', 0);
	 
	makeAnimatedLuaSprite('majinGF', 'stages/endeavors/majinGF', 290, -350);
	addAnimationByPrefix('majinGF', 'dance', 'dance', 23, true);
	setScrollFactor('majinGF', 1, 1);
	scaleObject('majinGF', 0.5, 0.5);
	setProperty('majinGF.alpha', 0);

	addLuaSprite('background', false);
	addLuaSprite('groundCD', false);
	addLuaSprite('majinWtf', false);
	addLuaSprite('majinSign', false);
	addLuaSprite('majinTwins', false);
	addLuaSprite('majinSwag', false);
	addLuaSprite('majinGF', false);
	
	setProperty('background.antialiasing', false)
	setProperty('groundCD.antialiasing', true)
	setProperty('majinWtf.antialiasing', true)
	setProperty('majinSign.antialiasing', true)
	setProperty('majinTwins.antialiasing', true)
	setProperty('majinSwag.antialiasing', true)
	setProperty('majinGF.antialiasing', true)
end

function onCreatePost()
	precacheImage('background')
	precacheImage('groundCD')
	precacheImage('majinWtf')
	precacheImage('majinSign')
	precacheImage('majinTwins')
	precacheImage('majinSwag')
	precacheImage('majinGF')
end

function onStepHit()
	if curStep > 392 and curStep < 647 then
		setProperty('background.alpha', 1);
		setProperty('groundCD.alpha', 1);
		setProperty('majinWtf.alpha', 1);
		setProperty('majinSign.alpha', 1);
		setProperty('majinTwins.alpha', 1);
		setProperty('majinSwag.alpha', 1);
		setProperty('majinGF.alpha', 1);
    end
	if curStep > 648 and curStep < 1251 then		
		setProperty('background.alpha', 0);
		setProperty('groundCD.alpha', 0);
		setProperty('majinWtf.alpha', 0);
		setProperty('majinSign.alpha', 0);
		setProperty('majinTwins.alpha', 0);
		setProperty('majinSwag.alpha', 0);
		setProperty('majinGF.alpha', 0);
    end
	if curStep > 1252 and curStep < 1495 then
		setProperty('background.alpha', 1);
		setProperty('groundCD.alpha', 1);
		setProperty('majinWtf.alpha', 1);
		setProperty('majinSign.alpha', 1);
		setProperty('majinTwins.alpha', 1);
		setProperty('majinSwag.alpha', 1);
		setProperty('majinGF.alpha', 1);
    end
	if curStep > 1496 and curStep < 1779 then		
		setProperty('background.alpha', 0);
		setProperty('groundCD.alpha', 0);
		setProperty('majinWtf.alpha', 0);
		setProperty('majinSign.alpha', 0);
		setProperty('majinTwins.alpha', 0);
		setProperty('majinSwag.alpha', 0);
		setProperty('majinGF.alpha', 0);
    end
	if curStep > 1780 and curStep < 2031 then
        setProperty('background.alpha', 1);
		setProperty('groundCD.alpha', 1);
		setProperty('majinWtf.alpha', 1);
		setProperty('majinSign.alpha', 1);
		setProperty('majinTwins.alpha', 1);
		setProperty('majinSwag.alpha', 1);
		setProperty('majinGF.alpha', 1);
    end
	if curStep > 2032 then		
		setProperty('background.alpha', 0);
		setProperty('groundCD.alpha', 0);
		setProperty('majinWtf.alpha', 0);
		setProperty('majinSign.alpha', 0);
		setProperty('majinTwins.alpha', 0);
		setProperty('majinSwag.alpha', 0);
		setProperty('majinGF.alpha', 0);
    end
end