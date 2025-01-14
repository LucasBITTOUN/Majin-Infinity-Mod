function onCreate()
	-- background shit
	makeLuaSprite('funsky', 'funsky', -300, -60);
	setLuaSpriteScrollFactor('funsky', 0.1, 0.1);

	makeLuaSprite('funfloor', 'funfloor', -300, -420);
	setLuaSpriteScrollFactor('funfloor', 1, 1);
	
	makeLuaSprite('funpillars', 'funpillars', -340, 10);
	setLuaSpriteScrollFactor('funpillars', 0.9, 0.81);
	scaleObject('funpillars', 0.77, 0.77);
	
	makeLuaSprite('funpillars2', 'funpillars2', -340, -50);
	setLuaSpriteScrollFactor('funpillars2', 0.94, 0.94);
	scaleObject('funpillars2', 0.77, 0.77);
	
	
	addLuaSprite('funsky', false);
	addLuaSprite('funfloor', false);
	addLuaSprite('funpillars', false);
	addLuaSprite('funpillars2', false);
	addLuaSprite('funpillars3', false);
	addLuaSprite('funfog', true);
	
	close(false); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end