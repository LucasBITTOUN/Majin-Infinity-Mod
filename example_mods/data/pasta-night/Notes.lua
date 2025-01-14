--Code made by Drawoon_
--if you use this please give me credit
function onCreate()
colorArray={'purple','blue','green','red'}
precacheImage('NOTE_assets')
Distance=-2700
notes=-1
Hold=20
if downscroll then
notes=1
Distance=2700
Hold=55
end

end
function onSpawnNote(id,noteData,noteType,isSustainNote)
   
if noteType=='DuoMomentNOTE' then
    item='GFNotes'..getPropertyFromGroup('notes',membersIndex,'ID')
    if isSustainNote then
        makeAnimatedLuaSprite(item,'NOTE_assets',getProperty('StrumNote'..noteData..'.x')+35,getProperty('StrumNote'..noteData..'.y')-Distance-Hold)
        setObjectCamera(item,'hud')
        addAnimationByIndicesLoop(item,'Holding',colorArray[noteData+1]..' hold piece','0')
        addAnimationByIndicesLoop(item,'End'..colorArray[noteData+1],colorArray[noteData+1]..' hold end','0')
        if noteData==0 then  addAnimationByIndicesLoop(item,'End'..colorArray[noteData+1],'pruple end hold','0') end
        setGraphicSize(item,getPropertyFromGroup('notes',membersIndex,'width'),getPropertyFromGroup('notes',membersIndex,'height'))
        if getPropertyFromGroup('notes',membersIndex,'height')<70 then
            playAnim(item,'End'..colorArray[noteData+1])
            if downscroll then setProperty(item..'.flipY',true) end
            setProperty(item..'.y',getProperty(item..'.y')+80*notes)
        end
     
    else
        makeAnimatedLuaSprite(item,'NOTE_assets',getProperty('StrumNote'..noteData..'.x'),getProperty('StrumNote'..noteData..'.y')-Distance)
        setObjectCamera(item,'hud')
        addAnimationByIndicesLoop(item,'Note',colorArray[noteData+1],'0')
        scaleObject(item,0.65,0.65)
        

    end
    addLuaSprite(item,false)
    setProperty(item..'.alpha',0.7)
    setProperty(item..'.velocity.y',(0 + 0.45 * 1000 * getProperty('songSpeed'))*notes)
  
end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    removeLuaSprite('GFNotes'..getPropertyFromGroup('notes',membersIndex,'ID'),true)
end
function onUpdate(elapsed)
    
    
    
end
