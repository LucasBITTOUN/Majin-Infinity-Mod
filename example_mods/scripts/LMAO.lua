local defaultNotePos = {};
 
function onSongStart()
    for i = 0,7 do 
        x = getPropertyFromGroup('strumLineNotes', i, 'x')
 
        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        direc = getPropertyFromGroup('strumLineNotes', i, 'direction')
 
        table.insert(defaultNotePos, {x,y,direc})
    end
end

function onCreatePost()
    setProperty('showRating', false)
    setProperty('showComboNum', false)
    setProperty("showCombo", false)
    addLuaText('thing');
    setTextBorder("thing", 1.1, '000011')
    setTextSize('thing',24);
    setProperty('scoreTxt.visible',false)
end

function onUpdatePost(elapsed)
    setProperty('thing.y',getProperty('scoreTxt.y'))
	noteCount = getProperty('notes.length');

	for i = 0, noteCount-1 do

		noteData = getPropertyFromGroup('notes', i, 'noteData')
		if getPropertyFromGroup('notes', i, 'isSustainNote') then
            if (getPropertyFromGroup('notes', i, 'mustPress')) then
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("playerStrums", noteData, 'direction') - 90)
            else
				
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("opponentStrums", noteData, 'direction') - 90)
            end	
		else
            if (noteData >= 4) then
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("playerStrums", noteData, 'angle'))
            else
                setPropertyFromGroup('notes', i, 'angle', getPropertyFromGroup("opponentStrums", noteData, 'angle'))
            end	
		end
	end
end



local bop = true
local boper = false
function onStepHit()



    if curStep == 1034 then
        boper = false
        doTweenAlpha('af','fe',0,0.5,'sineOut')
    end
    if curStep == 1300 then
        boper = true
        doTweenAlpha('af','fe',1,0.5,'sineOut')
    end
    if curStep == 1554 then
        boper = false
        doTweenAlpha('af','fe',0,0.5,'sineOut')
    end
end