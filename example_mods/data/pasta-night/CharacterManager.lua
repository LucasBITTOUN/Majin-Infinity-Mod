--Code made by Drawoon_
--if you use this please give me credit
function onCreatePost()  
if dadName=='Hypno' or dadName=='LordX' or dadName=='MX' then
setProperty('dad.flipX',false)

end
if gfName=='Hypno' or gfName=='LordX' or gfName=='MX' then
    setProperty('gf.flipX',false)
end
if boyfriendName=='MX' then
    setProperty('iconP1.y',getProperty('iconP1.y')-25)
end


    bfChart=''
    gfChart=''
    dadChart=''


--Hypno
HypnoScale=1
makeAnimatedLuaSprite('HypnoArms','characters/PASTA_HYPNO',0,0)
addAnimationByPrefix('HypnoArms','Idle','Hypno Idle Front',24,true)
addAnimationByPrefix('HypnoArms','0','Hypno Left Front',24,false)
addAnimationByPrefix('HypnoArms','1','Hypno Down Front',24,false)
addAnimationByPrefix('HypnoArms','2','Hypno Up Front',24,false)
addAnimationByPrefix('HypnoArms','3','Hypno Right Front',24,false)
addOffset('HypnoArms',"Idle", -64*HypnoScale, -172*HypnoScale);
addOffset('HypnoArms',"0", 34*HypnoScale, 73*HypnoScale);
addOffset('HypnoArms',"1", -139*HypnoScale, -160*HypnoScale);
addOffset('HypnoArms',"2", 37*HypnoScale, 299*HypnoScale);
addOffset('HypnoArms',"3", -141*HypnoScale, -104*HypnoScale);
scaleObject('HypnoArms',1.4,1.4)
PositionHypnoArms()
--MX
ScaleMX=1
makeAnimatedLuaSprite('MXArms','characters/mxfront',0,0)
addAnimationByPrefix('MXArms','Idle','IdleFront',16,true)
addAnimationByPrefix('MXArms','0','LeftFront',24,false)
addAnimationByPrefix('MXArms','1','DownFront',24,false)
addAnimationByPrefix('MXArms','2','UpFront',24,false)
addAnimationByPrefix('MXArms','3','RightFront',24,false)
addAnimationByPrefix('MXArms','Hit1','Hit1Front',24,false)
addAnimationByPrefix('MXArms','Hit2','Hit2Front',24,false)

addOffset('MXArms',"Idle", 60*ScaleMX, 5*ScaleMX);
addOffset('MXArms',"2", 64*ScaleMX, 16*ScaleMX);
addOffset('MXArms',"0", 451*ScaleMX, -124*ScaleMX);
addOffset('MXArms',"3", -10*ScaleMX, -120*ScaleMX);
addOffset('MXArms',"1", 64*ScaleMX, -122*ScaleMX);
addOffset('MXArms',"Hit1", 111*ScaleMX, -2*ScaleMX);
addOffset('MXArms',"Hit2", 144*ScaleMX, -110*ScaleMX);
scaleObject('MXArms',ScaleMX,ScaleMX)

makeAnimatedLuaSprite('POW','mxblock',0,0)
addAnimationByPrefix('POW','bop','blockIdle',24,false)
PositionMXArms()

end
function PositionHypnoArms()
    HypnoOffsetY=100
    HypnoOffsetX=50
if dadName=='Hypno' then
setProperty('HypnoArms.x',getCharacterX('dad')+HypnoOffsetX)
setProperty('HypnoArms.y',getCharacterY('dad')+HypnoOffsetY)
    addLuaSprite('HypnoArms',true)
    dadChart='HypnoArms'
elseif boyfriendName=='Hypno' then
    setProperty('HypnoArms.x',getCharacterX('bf')+HypnoOffsetX)
    setProperty('HypnoArms.y',getCharacterY('bf')+HypnoOffsetY)
    addLuaSprite('HypnoArms',true)
    bfChart='HypnoArms'
elseif gfName=='Hypno' then
    setProperty('HypnoArms.x',getCharacterX('gf')+HypnoOffsetX)
    setProperty('HypnoArms.y',getCharacterY('gf')+HypnoOffsetY)
    addLuaSprite('HypnoArms',true)
    gfChart='HypnoArms'
else

end
end
function PositionMXArms()
    MXOffsetY=-45
    MXOffsetX=-75
if dadName=='MX' then
setProperty('MXArms.x',getCharacterX('dad')+MXOffsetX)
setProperty('MXArms.y',getCharacterY('dad')+MXOffsetY)
    addLuaSprite('MXArms',true)
    dadChart='MXArms'
elseif boyfriendName=='MX' then
    setProperty('MXArms.x',getCharacterX('bf')+MXOffsetX)
    setProperty('MXArms.y',getCharacterY('bf')+MXOffsetY)
    addLuaSprite('MXArms',true)
    bfChart='MXArms'
elseif gfName=='MX' then
    setProperty('MXArms.x',getCharacterX('gf')+MXOffsetX)
    setProperty('MXArms.y',getCharacterY('gf')+MXOffsetY)
    addLuaSprite('MXArms',true)
    gfChart='MXArms'
else

end
setProperty('POW.x',getProperty('MXArms.x')-MXOffsetX-195)
setProperty('POW.y',getProperty('MXArms.y')-MXOffsetY+460)
addLuaSprite('POW',true)
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    playAnim(bfChart,noteData,true)
    if noteType=='GF Sing' or noteType=='DuoMomentNOTE' then
        playAnim(gfChart,noteData,true)
    end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)

if noteType=='GF Sing'  then
    playAnim(gfChart,noteData,true)
else
    playAnim(dadChart,noteData,true)
end
if noteType=='DuoMomentNOTE' then
    playAnim(gfChart,noteData,true)
end
end
function onUpdatePost(elapsed)
if  getProperty('boyfriend.animation.curAnim.name')=='idle' then
    playAnim(bfChart,'Idle',true,false,getProperty('boyfriend.animation.curAnim.curFrame'))
end
if  getProperty('dad.animation.curAnim.name')=='idle' then
    playAnim(dadChart,'Idle',true,false,getProperty('dad.animation.curAnim.curFrame'))
end
if  getProperty('gf.animation.curAnim.name')=='idle' then
    playAnim(gfChart,'Idle',true,false,getProperty('gf.animation.curAnim.curFrame'))
end

end
