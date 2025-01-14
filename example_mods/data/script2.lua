-- Script made by Catbrother Everything with help by NardBruh. Credit is not needed but would be nice! :)

function onCreate()
	makeAnimatedLuaSprite('Dad3', 'characters/SONICEXE2', -250, 500); -- Change to characters idle in XML
	addAnimationByPrefix('Dad3', 'idle', 'ALT MAJIN IDLE', 24, false); -- Change to characters idle in XML
    addAnimationByPrefix('Dad3', '0', 'BF NOTE LEFT', 24, false); -- Change to characters leftnote in XML
    addAnimationByPrefix('Dad3', '1', 'BF NOTE DOWN', 24, false); -- Change to characters downnote in XML
    addAnimationByPrefix('Dad3', '2', 'BF NOTE UP', 24, false); -- Change to characters upnote in XML
    addAnimationByPrefix('Dad3', '3', 'BF NOTE RIGHT', 24, false); -- Change to characters rightnote in XML
	objectPlayAnimation('Dad3', 'idle'); 
	addLuaSprite('Dad3', false); -- false = add behind characters, true = add over characters
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Dad3', 'idle');
	end
end

lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "Alt Majin", "Alt² Majin" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Dad3', lastNote[1]);
    end
end