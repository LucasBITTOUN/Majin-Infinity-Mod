function onCreate()
	-- BUNCH OF BACKGROUND SHIT
	makeLuaSprite('sonicFUNsky', 'majin/sonicFUNsky', -500, -300);
	setLuaSpriteScrollFactor('sonicFUNsky', 0.9, 0.9);
	scaleObject('sonicFUNsky', 1, 1);
	
	makeLuaSprite('FUN floor BG', 'majin/FUN floor BG', -600, 550);
	setLuaSpriteScrollFactor('FUN floor BG', 1, 1);
	scaleObject('FUN floor BG', 1, 1);

	makeLuaSprite('Bush 1', 'majin/Bush 1', -600, 350);
	setLuaSpriteScrollFactor('Bush 1', 1, 1);
	scaleObject('Bush 1', 1, 1);

	makeLuaSprite('Bush2', 'majin/Bush2', -600, 150);
	setLuaSpriteScrollFactor('Bush2', 1, 1);
	scaleObject('Bush2', 1, 1);

	makeAnimatedLuaSprite('Majin Boppers Front', 'majin/Majin Boppers Front', -600, -350);
	addAnimationByPrefix('Majin Boppers Front', 'Majin Boppers Front', 'MajinBop1 instance', 24, true);
	setLuaSpriteScrollFactor('Majin Boppers Front', 0.8, 0.8);
	scaleObject('Majin Boppers Front', 1.05, 1.05);

	makeAnimatedLuaSprite('Majin Boppers Back', 'majin/Majin Boppers Back', -150, -300);
	addAnimationByPrefix('Majin Boppers Back', 'Majin Boppers Back', 'MajinBop2 instance', 24, true);
	setLuaSpriteScrollFactor('Majin Boppers Back', 0.7, 0.7);
	scaleObject('Majin Boppers Back', 1, 1);

	makeAnimatedLuaSprite('majin FG2', 'majin/majin FG2', -550, 550);
	addAnimationByPrefix('majin FG2', 'majin FG2', 'majin front bopper2', 24, true);
	setLuaSpriteScrollFactor('majin FG2', 0.7, 0.7);
	scaleObject('majin FG2', 1.15, 1.15);

	makeAnimatedLuaSprite('majin FG1', 'majin/majin FG1', 1600, 550);
	addAnimationByPrefix('majin FG1', 'majin FG1', 'majin front bopper1', 24, true);
	setLuaSpriteScrollFactor('majin FG1', 0.7, 0.7);
	scaleObject('majin FG1', 1.15, 1.15);

	makeLuaSprite('sonicFUNsky2', 'majin/sonicFUNsky2', 100, -300);
	setLuaSpriteScrollFactor('sonicFUNsky2', 0.9, 0.9);
	scaleObject('sonicFUNsky2', 1, 1);

	makeAnimatedLuaSprite('Majin Boppers Front2', 'majin/Majin Boppers Front2', 1800, -350);
	addAnimationByPrefix('Majin Boppers Front2', 'Majin Boppers Front2', 'MajinBop1 instance', 24, true);
	setLuaSpriteScrollFactor('Majin Boppers Front2', 0.8, 0.8);
	scaleObject('Majin Boppers Front2', 1.05, 1.05);

	makeAnimatedLuaSprite('Majin Boppers Back2', 'majin/Majin Boppers Back2', 1450, -300);
	addAnimationByPrefix('Majin Boppers Back2', 'Majin Boppers Back2', 'MajinBop2 instance', 24, true);
	setLuaSpriteScrollFactor('Majin Boppers Back2', 0.7, 0.7);
	scaleObject('Majin Boppers Back2', 1, 1);

	makeLuaSprite('FUN floor BG2', 'majin/FUN floor BG2', 1950, 550);
	setLuaSpriteScrollFactor('FUN floor BG2', 1, 1);
	scaleObject('FUN floor BG2', 1, 1);

	makeLuaSprite('Bush 1-2', 'majin/Bush 1-2', 1550, 350);
	setLuaSpriteScrollFactor('Bush 1-2', 1, 1);
	scaleObject('Bush 1-2', 1, 1);

	makeLuaSprite('Bush2-2', 'majin/Bush2-2', 1450, 150);
	setLuaSpriteScrollFactor('Bush2-2', 1, 1);
	scaleObject('Bush2-2', 1, 1);

	addLuaSprite('sonicFUNsky2', false);
	addLuaSprite('sonicFUNsky', false);
	addLuaSprite('Bush2-2', false);
	addLuaSprite('Bush2', false);
	addLuaSprite('Majin Boppers Back2', false);
	addLuaSprite('Majin Boppers Back', false);
	addLuaSprite('Bush 1', false);
	addLuaSprite('Bush 1-2', false);
	addLuaSprite('Majin Boppers Front2', false);
	addLuaSprite('Majin Boppers Front', false);
	addLuaSprite('FUN floor BG2', false);
	addLuaSprite('FUN floor BG', false);
	addLuaSprite('majin FG2', true);
	addLuaSprite('majin FG1', true);

end
function onBeatHit()
	objectPlayAnimation('Majin Boppers Front','Majin Boppers Front',true)
	objectPlayAnimation('Majin Boppers Front2','Majin Boppers Front2',true)
	objectPlayAnimation('Majin Boppers Back','Majin Boppers Back',true)
	objectPlayAnimation('Majin Boppers Back2','Majin Boppers Back2',true)
	objectPlayAnimation('majin FG2','majin FG2',true)
	objectPlayAnimation('majin FG1','majin FG1',true)
end