local curState = 0
function onCreate()
    makeAnimatedLuaSprite('fatalityBg1','fatal/launchbase',-1200,-900)
    addAnimationByPrefix('fatalityBg1','moviment','idle',14,true)
    setProperty('fatalityBg1.antialiasing',false)
    scaleObject('fatalityBg1',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2','fatal/domain',-1200,-900)
    addAnimationByPrefix('fatalityBg2','moviment','idle',14,false)
    setProperty('fatalityBg2.antialiasing',false)
    scaleObject('fatalityBg2',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg3','fatal/domain2',-1200,-900)
    addAnimationByPrefix('fatalityBg3','moviment','idle',14,false)
    setProperty('fatalityBg3.antialiasing',false)
    scaleObject('fatalityBg3',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg4','fatal/truefatalstage',-1200,-900)
    addAnimationByPrefix('fatalityBg4','moviment','idle',14,true)
    setProperty('fatalityBg4.antialiasing',false)
    scaleObject('fatalityBg4',5.7,5.7)

    addLuaSprite('fatalityBg1')
end
function onCreatePost()
    addLuaScript('extra_scripts/oldScreen')
    addLuaScript('extra_scripts/pixelHud')
    callScript('extra_scripts/oldScreen','setOldScreen')
end
function onBeatHit()
    playAnim('fatalityBg2','moviment',false)
    playAnim('fatalityBg3','moviment',false)
end
function changeState(state)
    if curState ~= state then
        if curState == 0 then
            removeLuaSprite('fatalityBg1',true)
        elseif curState == 1 then
            removeLuaSprite('fatalityBg2',true)
            removeLuaSprite('fatalityBg3',true)
        elseif state ~= 2 then
            removeLuaSprite('fatalityBg4',true)
        end
        if state == 0 then
            addLuaSprite('fatalityBg1',false)
        elseif state == 1 then
            setProperty('boyfriendGroup.x',1440)
            addLuaSprite('fatalityBg2',false)
            addLuaSprite('fatalityBg3',false)
        elseif state == 2 then
            addLuaSprite('fatalityBg4',false)
            setProperty('boyfriendGroup.x',820)
        end
        curState = state
    end
end
function onSectionHit()
    if songName == 'Fatality' then
        if curSection == 16 then
            changeState(1)
        elseif curSection == 124 then
            changeState(2)
        end
    end
end