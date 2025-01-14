function onCountdownStarted()
	for i = 0, getProperty('unspawnNotes.length') -1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Majin Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notes/majin/majinNotes'); 
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end