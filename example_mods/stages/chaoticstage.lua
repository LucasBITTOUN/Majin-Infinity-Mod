function onCreate()

	makeAnimatedLuaSprite('BGlmao', 'sonic/Glmao', -800, -780);
	addAnimationByPrefix('BGlmao', 'BG_majin ','BG_majin ', 24, true)
	setGraphicSize('BGlmao', getProperty('BGlmao.width') * 1.5)
	setScrollFactor ('BGlmao', 0.8, 0.9);
	addLuaSprite('BGlmao', false);

end