--Code made by Drawoon_
--if you use this please give me credit
function onCreate()
    HypnoNotePos={852,954,1056,1158}
    MXNotePos={12,114,216,318}
    LordXNotePos={435,537,639,741}
    setProperty('skipArrowStartTween',true)
    
end
function onSongStart()
    AnimAtlas={'LEFT','DOWN','UP','RIGHT','left','down','up','right'}
Post={435,defaultOpponentStrumY0+5}
X=80
PlayerOffset=40
Separation=defaultOpponentStrumX1-defaultOpponentStrumX0
    setPropertyFromGroup('strumLineNotes',0,'x',defaultOpponentStrumX0-X)
    setPropertyFromGroup('strumLineNotes',1,'x',defaultOpponentStrumX1-X-10*1)
    setPropertyFromGroup('strumLineNotes',2,'x',defaultOpponentStrumX2-X-10*2)
    setPropertyFromGroup('strumLineNotes',3,'x',defaultOpponentStrumX3-X-10*3)
    setPropertyFromGroup('strumLineNotes',4,'x',defaultPlayerStrumX0+PlayerOffset+X)
    setPropertyFromGroup('strumLineNotes',5,'x',defaultPlayerStrumX1+PlayerOffset+X-10*1)
    setPropertyFromGroup('strumLineNotes',6,'x',defaultPlayerStrumX2+PlayerOffset+X-10*2)
    setPropertyFromGroup('strumLineNotes',7,'x',defaultPlayerStrumX3+PlayerOffset+X-10*3)
    
    Separation=Separation-10
    for i=0,3 do
    makeAnimatedLuaSprite('StrumNote'..i,'NOTE_assets',Post[1]+Separation*(i),Post[2])
    setObjectCamera('StrumNote'..i,'hud')
    addAnimationByPrefix('StrumNote'..i,'static','arrow'..AnimAtlas[i+1],24,true)
    addAnimationByPrefix('StrumNote'..i,'comfirm',AnimAtlas[i+5]..' confirm',24,true)
    setProperty('StrumNote'..i..'.alpha',0.7)
    setObjectOrder('StrumNote'..i,-3)
    scaleObject('StrumNote'..i,0.65,0.65)
    addLuaSprite('StrumNote'..i,false)
    end
    PostGFNote()
    PostStrum()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'swagWidth',160 * 0.6)
    end
    for i = 0, getProperty('notes.length')-1 do
        setPropertyFromGroup('notes', i, 'swagWidth',160 * 0.6)
    end
    
   
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

if noteType=='GF Sing' then
    runHaxeCode([[
    game.strumLineNotes.members[]]..noteData..[[].playAnim('static', true)
    ]])
    setProperty('StrumNote'..noteData..'.x',Post[1]+Separation*(noteData)-27)
    setProperty('StrumNote'..noteData..'.y',Post[2]-26)
    playAnim('StrumNote'..noteData,'comfirm',true)
    runTimer('StrumNote'..noteData,0.1)
end
if noteType=='DuoMomentNOTE' then
    playAnim('gf','sing'..AnimAtlas[noteData+1],true)
    setProperty('StrumNote'..noteData..'.x',Post[1]+Separation*(noteData)-27)
    setProperty('StrumNote'..noteData..'.y',Post[2]-26)
    playAnim('StrumNote'..noteData,'comfirm',true)
    runTimer('StrumNote'..noteData,0.1)
end
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag=='StrumNote0' then
    setProperty('StrumNote0.x',Post[1]+Separation*(0))
    setProperty('StrumNote0.y',Post[2])
    playAnim('StrumNote0','static',true)
end
if tag=='StrumNote1' then
    setProperty('StrumNote1.x',Post[1]+Separation*(1))
    setProperty('StrumNote1.y',Post[2])
    playAnim('StrumNote1','static',true)
end
if tag=='StrumNote2' then
    setProperty('StrumNote2.x',Post[1]+Separation*(2))
    setProperty('StrumNote2.y',Post[2])
    playAnim('StrumNote2','static',true)
end
if tag=='StrumNote3' then
    setProperty('StrumNote3.x',Post[1]+Separation*(3))
    setProperty('StrumNote3.y',Post[2])
    playAnim('StrumNote3','static',true)
end
end
function PostGFNote()
	
    if dadName=='MX' and gfName=='LordX' then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i,'noteType')=='GF Sing' then
            if getPropertyFromGroup('unspawnNotes', i,'isSustainNote') then
			setPropertyFromGroup('unspawnNotes', i, 'offsetX',453)
			else
                setPropertyFromGroup('unspawnNotes', i,'offsetX',418)
            end
		end
	end
	for i = 0, getProperty('notes.length')-1 do
		if getPropertyFromGroup('notes', i, 'noteType')=='GF Sing' then
            if getPropertyFromGroup('notes', i,'isSustainNote') then
                setPropertyFromGroup('notes', i, 'offsetX',453)
            else
                setPropertyFromGroup('notes', i, 'offsetX',418)
            end
		end
	end
    elseif dadName=='LordX' and gfName=='Hypno' then
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i,'noteType')=='GF Sing' then
                if getPropertyFromGroup('unspawnNotes', i,'isSustainNote') then
                setPropertyFromGroup('unspawnNotes', i, 'offsetX',453)
                else
                    setPropertyFromGroup('unspawnNotes', i,'offsetX',418)
                end
            end
        end
        for i = 0, getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', i, 'noteType')=='GF Sing' then
                if getPropertyFromGroup('notes', i,'isSustainNote') then
                    setPropertyFromGroup('notes', i, 'offsetX',453)
                else
                    setPropertyFromGroup('notes', i, 'offsetX',418)
                end
            end
        end
    end
    if dadName=='MX' and gfName=='Hypno' then
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i,'noteType')=='GF Sing' then
                if getPropertyFromGroup('unspawnNotes', i,'isSustainNote') then
                setPropertyFromGroup('unspawnNotes', i, 'offsetX',871)
                else
                    setPropertyFromGroup('unspawnNotes', i,'offsetX',836)
                end
            end
        end
        for i = 0, getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', i, 'noteType')=='GF Sing' then
                if getPropertyFromGroup('notes', i,'isSustainNote') then
                    setPropertyFromGroup('notes', i, 'offsetX',871)
                else
                    setPropertyFromGroup('notes', i, 'offsetX',836)
                end
            end
        end
    end
    if dadName=='Hypno' and gfName=='MX' then
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i,'noteType')=='GF Sing' then
                if getPropertyFromGroup('unspawnNotes', i,'isSustainNote') then
                setPropertyFromGroup('unspawnNotes', i, 'offsetX',-805)
                else
                    setPropertyFromGroup('unspawnNotes', i,'offsetX',-845)
                end
            end
        end
        for i = 0, getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', i, 'noteType')=='GF Sing' then
                if getPropertyFromGroup('notes', i,'isSustainNote') then
                    setPropertyFromGroup('notes', i, 'offsetX',-805)
                else
                    setPropertyFromGroup('notes', i, 'offsetX',-845)
                end
            end
        end
    end
    if dadName=='LordX' and gfName=='MX' then
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if getPropertyFromGroup('unspawnNotes', i,'noteType')=='GF Sing' then
                if getPropertyFromGroup('unspawnNotes', i,'isSustainNote') then
                setPropertyFromGroup('unspawnNotes', i, 'offsetX',-383)
                else
                    setPropertyFromGroup('unspawnNotes', i,'offsetX',-418)
                end
            end
        end
        for i = 0, getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', i, 'noteType')=='GF Sing' then
                if getPropertyFromGroup('notes', i,'isSustainNote') then
                    setPropertyFromGroup('notes', i, 'offsetX',-383)
                else
                    setPropertyFromGroup('notes', i, 'offsetX',-418)
                end
            end
        end
        elseif dadName=='Hypno' and gfName=='LordX' then
            for i = 0, getProperty('unspawnNotes.length')-1 do
                if getPropertyFromGroup('unspawnNotes', i,'noteType')=='GF Sing' then
                    if getPropertyFromGroup('unspawnNotes', i,'isSustainNote') then
                    setPropertyFromGroup('unspawnNotes', i, 'offsetX',-383)
                    else
                        setPropertyFromGroup('unspawnNotes', i,'offsetX',-418)
                    end
                end
            end
            for i = 0, getProperty('notes.length')-1 do
                if getPropertyFromGroup('notes', i, 'noteType')=='GF Sing' then
                    if getPropertyFromGroup('notes', i,'isSustainNote') then
                        setPropertyFromGroup('notes', i, 'offsetX',-383)
                    else
                        setPropertyFromGroup('notes', i, 'offsetX',-418)
                    end
                end
            end
        end
    
	
end
function PostStrum()

if dadName =='MX' then
    for i=0,3 do
        setPropertyFromGroup('strumLineNotes',i,'x',MXNotePos[i+1])
    end
elseif dadName =='LordX' then
    for i=0,3 do
        setPropertyFromGroup('strumLineNotes',i,'x',LordXNotePos[i+1])
    end
elseif dadName =='Hypno' then
    for i=0,3 do
        setPropertyFromGroup('strumLineNotes',i,'x',HypnoNotePos[i+1])
    end
end
if gfName =='MX' then
    for i=0,3 do
        setProperty('StrumNote'..i..'.x',MXNotePos[i+1])
    end
    Post[1]=MXNotePos[1]
elseif gfName =='LordX' then
    for i=0,3 do
        setProperty('StrumNote'..i..'.x',LordXNotePos[i+1])
    end
    Post[1]=LordXNotePos[1]
elseif gfName =='Hypno' then
    for i=0,3 do
        setProperty('StrumNote'..i..'.x',HypnoNotePos[i+1])
    end
    Post[1]=HypnoNotePos[1]
end
if boyfriendName =='MX' then
for i=0,3 do
    setPropertyFromGroup('playerStrums',i,'x',MXNotePos[i+1])
end
elseif boyfriendName =='LordX' then
    for i=0,3 do
        setPropertyFromGroup('playerStrums',i,'x',LordXNotePos[i+1])
    end
elseif boyfriendName =='Hypno' then
    for i=0,3 do
        setPropertyFromGroup('playerStrums',i,'x',HypnoNotePos[i+1])
    end
end
for i=0,7 do
    setPropertyFromGroup('strumLineNotes',i,'scale.x',0.65)
    setPropertyFromGroup('strumLineNotes',i,'scale.y',0.65)
end




end
function onUpdate(elapsed)
    setPropertyFromGroup('strumLineNotes',0,'alpha',0.7)
    setPropertyFromGroup('strumLineNotes',1,'alpha',0.7)
    setPropertyFromGroup('strumLineNotes',2,'alpha',0.7)
    setPropertyFromGroup('strumLineNotes',3,'alpha',0.7)
end