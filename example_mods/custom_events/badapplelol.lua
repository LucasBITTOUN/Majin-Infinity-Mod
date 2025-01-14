local hasSpawned = false
function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' and hasSpawned == false then
		doTweenColor('badapplexd', 'boyfriend', '000000', value2, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', value2, 'linear')
		doTweenColor('badapplexd2', 'gf', '000000', value2, 'linear')
		doTweenColor('badapplexd6', 'healthBar', '000000', value2, 'linear')
		doTweenColor('badapplexd100', 'iconP1', '000000', value2, 'linear')
		doTweenColor('badapplexd10', 'iconP2', '000000', value2, 'linear')
		hasSpawned = true
	end
	if name == 'badapplelol' and value1 == 'a' and hasSpawned == true then
		doTweenColor('badapplexd', 'boyfriend', '000000', value2, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', value2, 'linear')
		doTweenColor('badapplexd2', 'gf', '000000', value2, 'linear')
		doTweenColor('badapplexd6', 'healthBar', '000000', value2, 'linear')
		doTweenColor('badapplexd100', 'iconP1', '000000', value2, 'linear')
		doTweenColor('badapplexd10', 'iconP2', '000000', value2, 'linear')
	end
	if name == 'badapplelol' and value1 == 'b' then
		doTweenColor('badapplexd3', 'boyfriend', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd4', 'dad', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd5', 'gf', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd7', 'healthBar', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd101', 'iconP1', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd11', 'iconP2', 'FFFFFF', value2, 'linear')
	end
end