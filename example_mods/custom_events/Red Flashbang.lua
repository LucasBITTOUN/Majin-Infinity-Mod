function onEvent(n,v1,v2)


	if n == 'Red Flashbang' then

	   makeLuaSprite('flash', '', 0, 0);
        makeGraphic('flash',1280,720,'FF0000')
	      addLuaSprite('flash', true);
	      setLuaSpriteScrollFactor('flash',0,0)
	      setProperty('flash.scale.x',2)
	      setProperty('flash.scale.y',2)
	      setProperty('flash.alpha',0)
		setProperty('flash.alpha',0.7)
		doTweenAlpha('flTw','flash',0,v1,'linear')
	end



end