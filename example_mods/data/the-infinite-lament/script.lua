-- Script made by Catbrother Everything with help by NardBruh. Credit is not needed but would be nice! :)

function onCreate()
	makeAnimatedLuaSprite('Dad2', 'characters/B_ALT_MAJIN_SONIC_ASSETS', -150, 550); -- Change to characters idle in XML
	addAnimationByPrefix('Dad2', 'idle', ' B ALT MAJIN IDLE', 24, false); -- Change to characters idle in XML
    addAnimationByPrefix('Dad2', '0', 'B ALT MAJIN LEFT', 24, false); -- Change to characters leftnote in XML
    addAnimationByPrefix('Dad2', '1', 'B ALT MAJIN DOWN', 24, false); -- Change to characters downnote in XML
    addAnimationByPrefix('Dad2', '2', 'B ALT MAJIN UP', 24, false); -- Change to characters upnote in XML
    addAnimationByPrefix('Dad2', '3', 'B ALT MAJIN RIGHT', 24, false); -- Change to characters rightnote in XML
	objectPlayAnimation('Dad2', 'idle'); 
	addLuaSprite('Dad2', true); -- false = add behind characters, true = add over characters
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Dad2', 'idle');
	end
end

lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "B Alt Majin" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Dad2', lastNote[1]);
    end

	if lastNote[2] == "B Alt² Majin" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
		objectPlayAnimation('Dad2', lastNote[1]);
	end
end