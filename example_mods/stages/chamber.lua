function onCreate()
    makeLuaSprite('bg','Chamber/Wall',-1500,-200)
    addAnimationByPrefix('bg','normal','Wall instance',0,true)
    addAnimationByPrefix('bg','broked','Wall Broken instance',0,true)
    setScrollFactor('bg',0.5,0.5)
    addLuaSprite('bg')

    makeAnimatedLuaSprite('ChamberFloor','Chamber/Floor',-3000,1000)
    addAnimationByPrefix('ChamberFloor','yellow','floor yellow',0,true)
    addAnimationByPrefix('ChamberFloor','blue','floor blue',0,true)
    scaleObject('ChamberFloor',1.2,1.2)
    addLuaSprite('ChamberFloor')

    makeAnimatedLuaSprite('ChamberRock','Chamber/FleetwayBGshit',-2600,-1300)
    addAnimationByPrefix('ChamberRock','yellow','BGyellow',24,true)
    addAnimationByPrefix('ChamberRock','normal','BGblue',24,true)
    addLuaSprite('ChamberRock')
    if not lowQuality then
        makeAnimatedLuaSprite('ChamberPebles','Chamber/pebles',750,1250)
        addAnimationByPrefix('ChamberPebles','normal','pebles instance 1',24,true)
        addAnimationByPrefix('ChamberPebles','yellow','pebles instance 2',24,true)
        addLuaSprite('ChamberPebles')

        makeAnimatedLuaSprite('Porker','Chamber/Porker Lewis',2400,-100)
        addAnimationByPrefix('Porker','idle','Porker FG',24,false)
        setScrollFactor('Porker',1.2,1.2)
        addLuaSprite('Porker',true)

    end

    makeAnimatedLuaSprite('ChamberRainEmerald','Chamber/Emerald Beam',0,-400)
    addAnimationByPrefix('ChamberRainEmerald','rain','Emerald Beam instance 1',24,true)
    addLuaSprite('ChamberRainEmerald',false)
    scaleObject('ChamberRainEmerald',1,0.6)

    makeAnimatedLuaSprite('ChamberRainEmerald2','Chamber/Emerald Beam Charged',-200,-400)
    addAnimationByPrefix('ChamberRainEmerald2','rain','Emerald Beam Charged instance 1',24,true)
    addLuaSprite('ChamberRainEmerald2')
    setProperty('ChamberRainEmerald2.alpha',0.1)
    scaleObject('ChamberRainEmerald2',1,0.6)

    makeAnimatedLuaSprite('ChamberMasterEmerald','Chamber/Emeralds',400,-200)
    addAnimationByPrefix('ChamberMasterEmerald','fly','TheEmeralds instance',24,true)
    addLuaSprite('ChamberMasterEmerald',false)



    makeAnimatedLuaSprite('Chamber','Chamber/The Chamber',-200,550)
    addAnimationByPrefix('Chamber','wowSonic','Chamber Sonic Fall0',24,false)
    if songName == 'chaos' then
        setProperty('Chamber.animation.timeScale',0)
    else
        setProperty('Chamber.animation.curAnim.curFrame',25)
    end
    
    addLuaSprite('Chamber',false)
    precacheImage('Chamber/The Chamber')

    
end
function onCreatePost()
    if songName == 'chaos' then
        playAnim('ChamberPebles','blue',true)
    end
end
function onTimerCompleted(tag) -- Called on data/chaos/script
    if tag == 'sonicFall' then
        setProperty('Chamber.animation.timeScale',1)

    elseif tag == 'FleetwayAppear' then
        if not lowQuality then
            playAnim('ChamberPebles','yellow',true)
        end
        playAnim('ChamberRock','yellow',true)
        playAnim('ChamberFloor','yellow',true)
        playAnim('ChamberRock','yellow',true)
        if not lowQuality then
            playAnim('ChamberPebles','yellow',true)
        end
        removeLuaSprite('ChamberRainEmerald',true)
        setProperty('ChamberRainEmerald2.alpha',1)
        runTimer('startSong',2)
    end
end
function onUpdatePost()
    if songName == 'chaos' and curSection > 1 or songName ~= 'chaos' then
        setProperty('dad.y',getProperty('dadGroup.y') + getProperty('dad.positionArray[1]') + 25 + (120*math.sin(getSongPosition()/bpm/5)))
    end
end
function onBeatHit()
    if not lowQuality then
        playAnim('Porker','idle',false)
    end
end
function onStepHit()
    if songName == 'chaos' then
        if curStep == 10 then
            doTweenY('sonicFleetwayY','dad',getProperty('Chamber.y') - getProperty('Chamber.height')/2 - 300,1,'quartOut')
            doTweenX('sonicFleetwayX','dad',getProperty('Chamber.x') + getProperty('Chamber.width')/2 - 100,1,'quartOut')
        end
        if curStep == 1008 then
            playAnim('Chamber','broked')
        end
    end
end