function onCreate()
    makeLuaSprite('endlessSky','FunInfiniteStage/sonicFUNsky',-360,0)
    --setProperty('endlessSky.antialiasing',false)
    scaleObject('endlessSky',0.85,0.85)
    addLuaSprite('endlessSky')
    if not lowQuality then
        makeAnimatedLuaSprite('endlessTreeBack','FunInfiniteStage/Majin Boppers Back',200,-190)
        addAnimationByPrefix('endlessTreeBack','tree','MajinBop2 instance 1',24,false)
        addLuaSprite('endlessTreeBack')
    end

    makeLuaSprite('endlessBG','FunInfiniteStage/Bush 1',0,600)
    addLuaSprite('endlessBG')

    makeLuaSprite('endlessBG2','FunInfiniteStage/Bush2',0,400)
    addLuaSprite('endlessBG2')

    makeAnimatedLuaSprite('endlessTreeFront2','FunInfiniteStage/Majin Boppers Front',-145,-190)
    addAnimationByPrefix('endlessTreeFront2','tree','MajinBop1 instance 1',24,false)
    addLuaSprite('endlessTreeFront2')

    makeAnimatedLuaSprite('endlessTreeFront','FunInfiniteStage/Majin Boppers Front',650,-200)
    addAnimationByPrefix('endlessTreeFront','tree','MajinBop1 instance 1',24,false)
    addLuaSprite('endlessTreeFront')


    makeLuaSprite('endlessGround','FunInfiniteStage/floor BG',-360,690)
    addLuaSprite('endlessGround')
    if not lowQuality then
        makeAnimatedLuaSprite('endlessSonic','FunInfiniteStage/majin FG2',-300,800)
        addAnimationByPrefix('endlessSonic','idle','majin front bopper2',24,false)
        addLuaSprite('endlessSonic',true)
        setScrollFactor('endlessSonic',1.1,1.1)

        makeAnimatedLuaSprite('endlessSonic2','FunInfiniteStage/majin FG1',1000,800)
        addAnimationByPrefix('endlessSonic2','idle','majin front bopper1',24,false)
        addLuaSprite('endlessSonic2',true)
        setScrollFactor('endlessSonic2',1.1,1.1)
    end
end
--[[function onCreatePost()
    if string.find(getProperty('dad.curCharacter'),'endless',0,true) == nil and string.find(getProperty('dad.curCharacter'),'majin',0,true) == nil then
        setProperty('dad.color',getColorFromHex('4C4CFF'))
        setProperty('iconP2.color',getColorFromHex('4C4CFF'))
        setProperty('healthBar.color',getColorFromHex('4C4CFF'))
    end
    if string.find(getProperty('boyfriend.curCharacter'),'endless',0,true) == nil and string.find(getProperty('boyfriend.curCharacter'),'majin',0,true) == nil then
        setProperty('boyfriend.color',getColorFromHex('4C4CFF'))
        setProperty('iconP1.color',getColorFromHex('4C4CFF'))
        setProperty('healthBar.color',getColorFromHex('4C4CFF'))
    end
    for strumNotes = 0,7 do
        if getPropertyFromGroup('strumLineNotes',strumLineLength,'texture') ~= 'Majin_Notes' then
            setPropertyFromGroup('strumLineNotes',strumNotes,'color',getColorFromHex('99A8FF'))
        end
    end
end]]--
function onBeatHit()
    playAnim('endlessTreeBack','tree',true)
    playAnim('endlessTreeFront','tree',true)
    playAnim('endlessTreeFront2','tree',true)
    playAnim('endlessSonic','idle',true)
    playAnim('endlessSonic2','idle',true)
end