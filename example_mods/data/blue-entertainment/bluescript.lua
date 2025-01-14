
function onStepHit()
	if curStep > 0 then
		triggerEvent('Set Property', 'dad.x', '-200')
		triggerEvent('Set Property', 'dad.y', '50')
		
		triggerEvent('Set Property', 'boyfriend.x', '1025')
		triggerEvent('Set Property', 'boyfriend.y', '425')
		
		triggerEvent('Camera Follow Pos', '', '')
    end
end