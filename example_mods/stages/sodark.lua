function onCreate()
	-- background shit
	makeLuaSprite('sodarkback', 'sodarkbgback', -610, -290);
	setScrollFactor('sodarkback', 0.9, 0.9);

	addLuaSprite('sodarkback', false);
	addLuaSprite('sodarkfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end