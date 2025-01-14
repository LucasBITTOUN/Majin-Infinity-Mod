--Code made by Drawoon_
--if you use this please give me credit
function onCreate()
HypnoIconOffset={-20,50}
MXIconOffset={-20,50}
LordXIconOffset={-20,50}
makeAnimatedLuaSprite('IconHypno','icons/icon-hypno-cards',0,0)
addAnimationByPrefix('IconHypno','Good','iconGood',24,true)
addAnimationByPrefix('IconHypno','Bad','iconBad',24,true)
setObjectCamera('IconHypno','hud')
addLuaSprite('IconHypno',false)

makeAnimatedLuaSprite('IconLordX','icons/icon-lord-x',0,0)
addAnimationByPrefix('IconLordX','Good','iconGood',24,true)
addAnimationByPrefix('IconLordX','Bad','iconBad',24,true)
setObjectCamera('IconLordX','hud')
addLuaSprite('IconLordX',false)

makeAnimatedLuaSprite('IconMX','icons/icon-mx',0,0)
addAnimationByPrefix('IconMX','Good','iconGood',24,true)
addAnimationByPrefix('IconMX','Bad','iconBad',24,true)
setObjectCamera('IconMX','hud')
addLuaSprite('IconMX',false)

setProperty('Icon'..boyfriendName..'.flipX',true)
scaleObject('Icon'..dadName,0.75,0.75)
scaleObject('Icon'..gfName,0.75,0.75)
end
function onUpdatePost(elapsed)
setProperty('iconP1.alpha',0)
setProperty('iconP2.alpha',0)
if boyfriendName=='Hypno' then
setProperty('Icon'..boyfriendName..'.x',getProperty('iconP1.x'))
setProperty('Icon'..boyfriendName..'.y',getProperty('iconP1.y'))
elseif boyfriendName =='MX' then
    setProperty('Icon'..boyfriendName..'.x',getProperty('iconP1.x'))
    setProperty('Icon'..boyfriendName..'.y',getProperty('iconP1.y')+getProperty('Icon'..boyfriendName..'.height')/3)
else
    setProperty('Icon'..boyfriendName..'.x',getProperty('iconP1.x'))
    setProperty('Icon'..boyfriendName..'.y',getProperty('iconP1.y'))
end

if dadName=='Hypno' then
    setProperty('Icon'..dadName..'.x',getProperty('iconP2.x')+10)
    setProperty('Icon'..dadName..'.y',getProperty('iconP2.y'))
elseif dadName =='MX' then
    setProperty('Icon'..dadName..'.x',getProperty('iconP2.x')+50)
    setProperty('Icon'..dadName..'.y',getProperty('iconP2.y'))
else
    setProperty('Icon'..dadName..'.x',getProperty('iconP2.x'))
    setProperty('Icon'..dadName..'.y',getProperty('iconP2.y'))
end

if gfName =='Hypno' then
setProperty('Icon'..gfName..'.x',getProperty('iconP2.x')+HypnoIconOffset[1])
setProperty('Icon'..gfName..'.y',getProperty('iconP2.y')+HypnoIconOffset[2])
elseif gfName=='MX'then
    setProperty('Icon'..gfName..'.x',getProperty('iconP2.x')+MXIconOffset[1])
    setProperty('Icon'..gfName..'.y',getProperty('iconP2.y')+MXIconOffset[2])
else
    setProperty('Icon'..gfName..'.x',getProperty('iconP2.x')+LordXIconOffset[1])
    setProperty('Icon'..gfName..'.y',getProperty('iconP2.y')+LordXIconOffset[2])
end
if getProperty('iconP1.animation.curAnim.curFrame')==0 then
playAnim('Icon'..boyfriendName,'Good',true)
else
    playAnim('Icon'..boyfriendName,'Bad',true)
end
if getProperty('iconP2.animation.curAnim.curFrame')==0 then
    playAnim('Icon'..dadName,'Good',true)
    playAnim('Icon'..gfName,'Good',true)
else
    playAnim('Icon'..dadName,'Bad',true)
    playAnim('Icon'..gfName,'Bad',true)
end
end
function onCreatePost()

    setObjectOrder('Icon'..boyfriendName,getObjectOrder('iconP1'))
    setObjectOrder('Icon'..gfName,getObjectOrder('iconP1')+1)
    setObjectOrder('Icon'..dadName,getObjectOrder('iconP1'))

end