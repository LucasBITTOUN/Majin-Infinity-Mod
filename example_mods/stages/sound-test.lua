function onCreate()
	-- background shit
	makeLuaSprite('bg', 'SoundTest/soundBG', 0, 0)
	addLuaSprite('bg')
	setScrollFactor('bg', 1, 1);

	makeLuaSprite('title', 'SoundTest/soundTitle', 0, 0)
	addLuaSprite('title')
	setScrollFactor('title', 1, 1);

	makeLuaSprite('info', 'SoundTest/Info', -50, 0)
	addLuaSprite('info')
	setScrollFactor('info', 1, 1);
end

function onCreatePost()
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('healthBarBG.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('boyfriend.visible', false)
	setProperty('gf.visible', false)
	setProperty('dad.visible', false)
end