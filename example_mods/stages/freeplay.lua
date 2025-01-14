function onCreate()
	-- background shit
	makeLuaSprite('bg', 'freeplay/bg', 0, 0)
	addLuaSprite('bg')
	setScrollFactor('bg', 1, 1);

	makeAnimatedLuaSprite('back', 'freeplay/backBar', 700, 0)
	setLuaSpriteScrollFactor('back', 1, 1);
	addAnimationByPrefix('back', 'back', 'back', 14, true)
	objectPlayAnimation('back', 'backBar idle', true)
	setProperty('back.flipX', true)
	addLuaSprite('back')
	
	makeLuaSprite('margin', 'freeplay/margin', 170, 262)
	addLuaSprite('margin')
	scaleLuaSprite('margin', 1.2, 1.2)
	setScrollFactor('margin', 1, 1);

	makeLuaSprite('margin4', 'freeplay/margin', 200, 592)
	addLuaSprite('margin4')
	setProperty('margin4.visible', false)
	scaleLuaSprite('margin4', 1.0, 1.0)
	setScrollFactor('margin4', 1, 1)

	makeLuaSprite('margin3', 'freeplay/margin', 200, 592)
	addLuaSprite('margin3')
	scaleLuaSprite('margin3', 1.0, 1.0)
	setScrollFactor('margin3', 1, 1)

	makeLuaSprite('margin2', 'freeplay/margin', 200, -32)
	addLuaSprite('margin2')
	scaleLuaSprite('margin2', 1.0, 1.0)
	setScrollFactor('margin2', 1, 1);

	makeLuaSprite('hit', 'freeplay/hit', 183, 274)
	addLuaSprite('hit')
	setProperty('hit.visible', false)
	setScrollFactor('hit', 1, 1);

	makeLuaSprite('hit2', 'freeplay/hit', 211, -22)
	addLuaSprite('hit2')
	setProperty('hit2.visible', false)
	setScrollFactor('hit2', 1, 1);

	makeLuaSprite('hit3', 'freeplay/hit', 211, 602)
	addLuaSprite('hit3')
	setProperty('hit3.visible', false)
	setScrollFactor('hit3', 1, 1);

	makeLuaSprite('arrowUp', 'freeplay/arrowUp', 0, 0)
	addLuaSprite('arrowUp')
	setScrollFactor('arrowUp', 1, 1);

	makeLuaSprite('arrowDown', 'freeplay/arrowDown', 0, 0)
	addLuaSprite('arrowDown')
	setScrollFactor('arrowDown', 1, 1);

	makeLuaSprite('controls', 'freeplay/controls', -40, -0.5)
	addLuaSprite('controls', true)
	setScrollFactor('controls', 1, 1);

	runTimer('black', 0.5, 1)
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

function onUpdate(elapsed)
    if keyPressed('up') then
        setProperty('arrowUp.alpha', 0.5)
    else
        setProperty('arrowUp.alpha', 1)

    if keyPressed('down') then
        setProperty('arrowDown.alpha', 0.5)
    else
        setProperty('arrowDown.alpha', 1)
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'black' then
	doTweenX('black', 'back', -50, 1, 'CircInOut')
end
end