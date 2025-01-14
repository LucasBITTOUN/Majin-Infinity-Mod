-- Script made by Catbrother Everything with help by NardBruh. Credit is not needed but would be nice! :)

function onCreate()
	makeAnimatedLuaSprite('Dad4', 'characters/MAJIN_TAILS', 600, 0); -- Change to characters idle in XML
	addAnimationByPrefix('Dad4', 'idle', 'TAILS IDLE', 24, false); -- Change to characters idle in XML
    addAnimationByPrefix('Dad4', '0', 'TAILS LEFT', 24, false); -- Change to characters leftnote in XML
    addAnimationByPrefix('Dad4', '1', 'TAILS DOWN', 24, false); -- Change to characters downnote in XML
    addAnimationByPrefix('Dad4', '2', 'TAILS UP', 24, false); -- Change to characters upnote in XML
    addAnimationByPrefix('Dad4', '3', 'TAILS RIGHT', 24, false); -- Change to characters rightnote in XML
	objectPlayAnimation('Dad4', 'idle'); 
	addLuaSprite('Dad4', true); -- false = add behind characters, true = add over characters
end
function onBeatHit()
	-- triggered 4 times per section
	if curBeat % 2 == 0 then
		objectPlayAnimation('Dad4', 'idle');
	end
end

lastNote = {0, ""}

function opponentNoteHit(id,d,t,s)

    lastNote[1] = d
    lastNote[2] = t
    
    if lastNote[2] == "Tails Majin" then -- Change "No Animation" to be your note type, usually you can just keep it as no anim assuming you arent using it elsewhere
	objectPlayAnimation('Dad4', lastNote[1]);
    end
end