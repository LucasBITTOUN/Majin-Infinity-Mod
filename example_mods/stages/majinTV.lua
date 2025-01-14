function onCreate()
	-- background shit
	makeLuaSprite('majintvback', 'majintvbgback', -600, -300);
	setScrollFactor('majintvback', 0.9, 0.9);

	addLuaSprite('majintvback', false);
	addLuaSprite('majintvfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end