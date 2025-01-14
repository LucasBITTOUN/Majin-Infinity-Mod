function onCreate() --bg pixel part 

	makeLuaSprite('thevoid', 'thevoid', -800, 500);
	setScrollFactor('thevoid', 0.0, 0.0);
	addLuaSprite('thevoid', true)

    makeAnimatedLuaSprite('fun', 'behind', -800, 500) 
	setLuaSpriteScrollFactor('P',0.9, 0.9);

 addLuaSprite('fun', false); --Added offscreen before it starts moving.
addAnimationByPrefix('behind', 'Move', 'majin crowd', 33, false);
end

    function onCreate() --stage
	makeAnimatedLuaSprite('sky', 'exe/FunInfiniteStage/sky', -800, -530);
	addAnimationByPrefix('sky', 'sky instance ','sky instance ', 24, true)
	setGraphicSize('sky', getProperty('sky.width') * 1.5)
	setScrollFactor ('sky', 0.8, 0.9);
	addLuaSprite('sky', false);
	
 	-- makeLuaSprite('piller', 'exe/FunInfiniteStage/pillers-back', -200, -300);
	-- -- setScrollFactor ('sky', 0.8, 0.8);
	-- setGraphicSize('sky', getProperty('sky.width') * 1.5)
    -- addLuaSprite('piller', true);

	makeAnimatedLuaSprite('mazinz', 'exe/FunInfiniteStage/trees_back', -1000, -500);
	addAnimationByPrefix('mazinz', 'trees mazin back instance E','trees mazin back instance ', 24, true)
	setGraphicSize('mazinz', getProperty('mazinz.width') * 1.5)
    addLuaSprite('mazinz', false);

	makeLuaSprite('bush', 'exe/FunInfiniteStage/bushes', -800, 150);
	setGraphicSize('bush', getProperty('bush.width') * 1.5)
    addLuaSprite('bush', false);

	makeLuaSprite('floor', 'exe/FunInfiniteStage/floor', -590, 700);
	setGraphicSize('floor', getProperty('floor.width') * 1.5)
    addLuaSprite('floor', false);

	-- makeAnimatedLuaSprite('bop', 'exe/FunInfiniteStage/mazin bopper', 1650, 0);
	-- addAnimationByPrefix('bop', 'majin bop','majin bop', 24, false)
	-- setGraphicSize('bop', getProperty('bop.width') * 1.5)
	-- addLuaSprite('bop', true);

	makeAnimatedLuaSprite('tree', 'exe/FunInfiniteStage/trees_front', -400, -450);
	addAnimationByPrefix('tree', 'trees mazins front instance ','trees mazins front instance ', 24, true)
	setGraphicSize('tree', getProperty('tree.width') * 1.5)
	addLuaSprite('tree', false);


function onStepHit()

	--FUTURE
	if curStep == 952 then
		setProperty('timeBar.color', getColorFromHex("1036B5"));
	
	end
	--PAST
	if curStep == 1260 then
		setProperty('timeBar.color', getColorFromHex("000080"));
	
	end
	--PAST
	if curStep == 1567 then
		setProperty('timeBar.color', getColorFromHex("000080"));
		
	end
	--FUTURE
	if curStep > 1875 then
		--setProperty('timeBar.color', getColorFromHex("1036B5"));
		 if curBeat % 2 == 0 then
		     setProperty('timeBar.color', getColorFromHex("1036B5"));--444F97
		 else
		     setProperty('timeBar.color', getColorFromHex("000080"));
		 end
	end
end
end
