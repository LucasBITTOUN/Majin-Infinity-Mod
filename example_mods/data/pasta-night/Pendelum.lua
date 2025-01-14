--Code made by Drawoon_
--if you use this please give me credit
function onCreate()
    beatInterval=2--Pendelum Interval
    Starter=false
    tranceInterval=0
    PendelumActive=true
    trance=0
    VolumeStatic=0
    psyshockCooldown=80
    precacheSound('TranceStatic')
    if boyfriendName=='Hypno' then
        PendelumActive=false
    end
    if PendelumActive then
--Penledum
makeAnimatedLuaSprite('ShadowPendelum','Pendelum_Phase2',0,0)
setObjectCamera('ShadowPendelum','hud')
addAnimationByPrefix('ShadowPendelum','idle','Pendelum Phase 2',24,true)
setProperty('ShadowPendelum.origin.y',0)
screenCenter('ShadowPendelum','x')
setProperty('ShadowPendelum.alpha',0)
addLuaSprite('ShadowPendelum')
makeAnimatedLuaSprite('Pendelum','Pendelum_Phase2',0,0)
setObjectCamera('Pendelum','hud')
addAnimationByPrefix('Pendelum','idle','Pendelum Phase 2',24,true)
setProperty('Pendelum.origin.y',0)
screenCenter('Pendelum','x')
addLuaSprite('Pendelum')
--Extra
makeAnimatedLuaSprite('Correct','Extras',530, 370)
setObjectCamera('Correct','hud')
addAnimationByPrefix('Correct','Tick','Checkmark',24,false)
setProperty('Correct.alpha',0)
addLuaSprite('Correct')
makeAnimatedLuaSprite('Incorrect','Extras',500, 350)
setObjectCamera('Incorrect','hud')
addAnimationByPrefix('Incorrect','X','X finished',24,false)
addLuaSprite('Incorrect')
setProperty('Incorrect.alpha',0)
playSound('TranceStatic',0,'TranceSound')
--Psyshock
makeAnimatedLuaSprite('Psyshock','Psyshock',530, 370)
scaleObject('Psyshock',0.85, 0.85)
addAnimationByPrefix('Psyshock','Psyshock','Full Psyshock Particle',24,false)
setProperty('Psyshock.alpha',1)
addLuaSprite('Psyshock',true)
    end


end
function onSongStart()
    if PendelumActive then
        Starter=true
        makeAnimatedLuaSprite('Static','StaticHypno',0, 0)
        setObjectCamera('Static','hud')
        setGraphicSize('Static',screenWidth,screenHeight)
        addAnimationByPrefix('Static','Idle','StaticHypno',24,true)
        setProperty('Static.alpha',0)
        addLuaSprite('Static',true)
    end
end
function onUpdate(elapsed)
    if Starter and PendelumActive then
    convertedTime = ((getSongPosition() / (crochet * beatInterval)) * math.pi)
    setProperty('Pendelum.angle',(math.sin(convertedTime) * 32))
    pendulumTimeframe = math.floor(((convertedTime / math.pi) - math.floor(convertedTime / math.pi)) * 1000) / 1000
	reach = 0.2;
    if pendulumTimeframe < reach or pendulumTimeframe > (1 - reach) then

            if not alreadyHit then
                canHitPendulum = true
            end
       
    else
        alreadyHit=false
        if canHitPendulum then
            if tranceInterval % 2 ==0  then
                BadPendelum()
                canHitPendulum=false
            end  
        end
    end
    if keyJustPressed('space') and not alreadyHit and PendelumActive then
        if canHitPendulum then
        alreadyHit=true
        canHitPendulum=false
        GoodPendelum()
        else
            BadPendelum()
        end
    end
    if botPlay and not alreadyHit and canHitPendulum and PendelumActive then
        alreadyHit=true
        canHitPendulum=false
        GoodPendelum()
    end
    end
    if PendelumActive then
    if getProperty('Correct.animation.curAnim.finished') then
        setProperty('Correct.alpha',0)
    end
    if getProperty('Incorrect.animation.curAnim.finished') then
        setProperty('Incorrect.alpha',0)
    end
    if getProperty('Psyshock.animation.curAnim.finished') then
        setProperty('Psyshock.alpha',0)
    end
    end
    if PendelumActive then
    setProperty('Static.alpha',trance/2)
    if trance>1 then
        VolumeStatic=(trance - 1) / 2
        setSoundVolume('TranceSound',VolumeStatic)
    else
        VolumeStatic=0
    end
    if trance>2 then
        trance=2
        setHealth(-1)
    end
    if trance < -0.25 then
		trance = -0.25;
    end
    end
end
--Use this for change Interval in song
function SetInterval(new)
    beatInterval=new
end
function GoodPendelum()
    trance=trance-0.075
setProperty('ShadowPendelum.alpha',0.5)
setProperty('ShadowPendelum.angle',getProperty('Pendelum.angle'))
doTweenAlpha('Shadow','ShadowPendelum',0,stepCrochet / 1000,'Linear')
setProperty('Correct.alpha',1)
playAnim('Correct','Tick',true)

end
function BadPendelum()
    trance=trance+0.115
setProperty('Incorrect.alpha',1)
playAnim('Incorrect','X',true)

end
function onSoundFinished(tag)
    if tag=='TranceSound' then
    playSound('TranceStatic',VolumeStatic,'TranceSound')
    end
end
function onStepHit()
   if PendelumActive then
       if  getSongPosition()>20000 then
            if psyshockCooldown<=0 then
                Psyshock()
                psyshockCooldown=PsyshockCalculate(75,40)
            else
                psyshockCooldown=psyshockCooldown-1
            end
       end
   end
end
function Psyshock()
    setProperty('Psyshock.alpha',1)

playAnim('Psyshock','Psyshock')
playSound('Psyshock',0.6)
if flashingLights then cameraFlash('hud','0xFFFFAFC1',1) end
trance =trance+ 0.25
end
function PsyshockCalculate(Start,Ending)
    t=Start + (getSongPosition() / songLength) * (Ending - Start)
    Result=stringSplit(t,'.')
    return tonumber(Result[1]);
end
