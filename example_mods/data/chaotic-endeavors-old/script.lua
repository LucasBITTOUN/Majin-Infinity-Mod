-- Script made by Catbrother Everything with help by NardBruh. Credit is not needed but would be nice! :)

function onCreate()
	makeAnimatedLuaSprite('Dad2', 'characters/SONICEXE', 1300, 450); -- Change to characters idle in XML
	addAnimationByPrefix('Dad2', 'idle', 'BF idle dance', 24, false); -- Change to characters idle in XML
    addAnimationByPrefix('Dad2', '0', 'BF NOTE LEFT', 32, false); -- Change to characters leftnote in XML
    addAnimationByPrefix('Dad2', '1', 'BF NOTE DOWN', 32, false); -- Change to characters downnote in XML
    addAnimationByPrefix('Dad2', '2', 'BF NOTE UP', 32, false); -- Change to characters upnote in XML
    addAnimationByPrefix('Dad2', '3', 'BF NOTE RIGHT', 32, false); -- Change to characters rightnote in XML
	objectPlayAnimation('Dad2', 'idle'); 
	addLuaSprite('Dad2', false); -- false = add behind characters, true = add over characters
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
    
    if lastNote[2] == "No Animation" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Dad2', lastNote[1]);
    end
end