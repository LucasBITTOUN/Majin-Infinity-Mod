
function onStepHit()
	if curStep > 144 and curStep < 391 then
		triggerEvent('Set Property', 'dad.x', '05')
		triggerEvent('Set Property', 'dad.y', '305')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '475')
		
		triggerEvent('Camera Follow Pos', '675', '300')
	end
	if curStep > 392 and curStep < 647 then
		triggerEvent('Set Property', 'dad.x', '-200')
		triggerEvent('Set Property', 'dad.y', '50')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '425')
		
		triggerEvent('Camera Follow Pos', '', '')
    end
	if curStep > 648 and curStep < 1251 then
		triggerEvent('Set Property', 'dad.x', '05')
		triggerEvent('Set Property', 'dad.y', '305')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '475')
		
		triggerEvent('Camera Follow Pos', '675', '300')
    end
	if curStep > 1252 and curStep < 1495 then
		triggerEvent('Set Property', 'dad.x', '-200')
		triggerEvent('Set Property', 'dad.y', '50')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '425')
		
		triggerEvent('Camera Follow Pos', '', '')
    end
	if curStep > 1496 and curStep < 1779 then
		triggerEvent('Set Property', 'dad.x', '05')
		triggerEvent('Set Property', 'dad.y', '305')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '475')
		
		triggerEvent('Camera Follow Pos', '675', '300')
    end
	if curStep > 1780 and curStep < 2031 then
		triggerEvent('Set Property', 'dad.x', '-200')
		triggerEvent('Set Property', 'dad.y', '50')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '425')
		
		triggerEvent('Camera Follow Pos', '', '')
    end
	if curStep > 2032 then
		triggerEvent('Set Property', 'dad.x', '05')
		triggerEvent('Set Property', 'dad.y', '305')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '475')
		
		triggerEvent('Camera Follow Pos', '675', '300')
    end
end