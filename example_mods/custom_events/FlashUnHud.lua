-- Event notes hooks
function onEvent(name, value1, value2)
	if name == 'FlashUnHud' then
		colour = tonumber(value2);
		duration = tonumber(value1);
		if colour == 0 then
			makeLuaSprite('flash', 'black', 0, 0);
			setObjectCamera('flash', 'hud');
			addLuaSprite('flash', false);
			doTweenColor('flashcolour', 'flash', '000000', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'linear');
		end
		if colour == 1 then
			makeLuaSprite('flash', 'white', 0, 0);
			setObjectCamera('flash', 'other');
			addLuaSprite('flash', true);
			doTweenColor('flashcolour', 'flash', 'FFFFFF', 0.01, 'linear');
			doTweenAlpha('flashalpha', 'flash', 0, duration, 'linear');
		end
    end
end