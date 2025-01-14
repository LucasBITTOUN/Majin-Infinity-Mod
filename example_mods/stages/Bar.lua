--Code made by Drawoon_
--if you use this please give me credit
function onCreate()
	LordX={350, 460}
	Hypno={700, 400}
	MX={-140,300}
	LordPos=''
	MXPos=''
	HypnoPos=''
    consistentPosition= {-625, -100};
	consistentSize= 1.25;
	isDead=false
	pastaBoppers={'Widemouth','Mousetable','Jack','Jeff','JeffArm','Squid','Herobrine','SquidHead','SlenderBitch','CoronationPeach','Shinto','POW'}
	addHaxeLibrary('Application', 'lime.app')
	setProperty('skipCountdown',true)
	if  isRunning('SelectMenu') then
	addLuaScript('data/pasta-night/SelectMenu')
	end
	addLuaScript('data/pasta-night/Notes')
	addLuaScript('data/pasta-night/StrumNote')
	addLuaScript('data/pasta-night/Pendelum')
	addLuaScript('data/pasta-night/CharacterManager')
	addLuaScript('data/pasta-night/Icon')

makeLuaSprite('ShaderObj')

makeLuaSprite('Sky','SKY',consistentPosition[1]+914*consistentSize,consistentPosition[2]+263*consistentSize)
setScrollFactor('Sky',0.9, 0.9)
scaleObject('Sky',consistentSize+0.1,consistentSize+0.1)
addLuaSprite('Sky',false)

makeLuaSprite('Shine','shine',consistentPosition[1]+916*consistentSize,consistentPosition[2]+265*consistentSize)
setScrollFactor('Shine',0.9, 0.9)
scaleObject('Shine',consistentSize,consistentSize)
addLuaSprite('Shine',false)

makeLuaSprite('Bar','bar',consistentPosition[1],consistentPosition[2])
setScrollFactor('Bar',0.9, 0.9)
scaleObject('Bar',consistentSize,consistentSize)
addLuaSprite('Bar',false)

makeLuaSprite('Holder','holder',consistentPosition[1]+1180*consistentSize,consistentPosition[2]+228*consistentSize)
setScrollFactor('Holder',0.9, 0.9)
scaleObject('Holder',consistentSize,consistentSize)
addLuaSprite('Holder',false)

makeAnimatedLuaSprite('Saled','SFingers',consistentPosition[1]+1050*consistentSize,math.floor(consistentPosition[2]+390*consistentSize)-1)
addAnimationByPrefix('Saled','bop','SFingers',24,true)
setScrollFactor('Saled',0.9, 0.9)
scaleObject('Saled',consistentSize,consistentSize)
addLuaSprite('Saled',false)
setProperty('Saled.x',getProperty('Saled.x')-getProperty('Saled.width')/2)
setProperty('Saled.y',getProperty('Saled.y')-getProperty('Saled.height')+10)

makeAnimatedLuaSprite('Widemouth','MrWidemouth',consistentPosition[1]+1150*consistentSize,consistentPosition[2] + 390 * consistentSize)
addAnimationByPrefix('Widemouth','bop','MrWidemouth instance 1',24,false)
setScrollFactor('Widemouth',0.9, 0.9)
scaleObject('Widemouth',consistentSize,consistentSize)
addLuaSprite('Widemouth',false)
setProperty('Widemouth.x',getProperty('Widemouth.x')-getProperty('Widemouth.width')/2)
setProperty('Widemouth.y',getProperty('Widemouth.y')-getProperty('Widemouth.height')+8)

makeLuaSprite('Machine','Machine',200*1.55, 70*3.5)
setScrollFactor('Machine',0.9, 0.9)
scaleObject('Machine',consistentSize* 0.35,consistentSize* 0.35)
addLuaSprite('Machine',false)

makeAnimatedLuaSprite('Herobrine','brian_idle',315,308)
addAnimationByPrefix('Herobrine','bop','brian idle ',24,false)
setScrollFactor('Herobrine',0.9, 0.9)
scaleObject('Herobrine',consistentSize,consistentSize)
addLuaSprite('Herobrine',false)

makeAnimatedLuaSprite('CoronationPeach','CoronationPeach',490*1.035, 279*1.11)
addAnimationByPrefix('CoronationPeach','bop','CoronationPeach',24,false)
setScrollFactor('CoronationPeach',0.9, 0.9)
scaleObject('CoronationPeach',consistentSize* 0.5,consistentSize* 0.5)

makeAnimatedLuaSprite('Shinto','ShintoPastaNight',610*1.035, 312*1.08)
addAnimationByPrefix('Shinto','bop','Shitno',24,false)
setScrollFactor('Shinto',0.9, 0.9)
scaleObject('Shinto',consistentSize* 0.5,consistentSize* 0.5)
addLuaSprite('Shinto',false)

addLuaSprite('CoronationPeach',false)

makeAnimatedLuaSprite('Jack','Jack',100*1.4, 180*1.4)
addAnimationByPrefix('Jack','bop','Body with tar instance 1',24,false)
setScrollFactor('Jack',0.9, 0.9)
scaleObject('Jack',consistentSize* 0.5,consistentSize* 0.5)
addLuaSprite('Jack',false)

makeLuaSprite('OtherTable','TableMisc',595*1.4-630,355*1.3)
setScrollFactor('OtherTable',0.9, 0.9)
scaleObject('OtherTable',consistentSize* 0.5,consistentSize* 0.5)


makeAnimatedLuaSprite('SlenderBitch','Buds_Slender_Effects',735*1.15,35*4.8)
addAnimationByPrefix('SlenderBitch','bop','Slenderman Full',24,false)
setScrollFactor('SlenderBitch',0.9, 0.9)
scaleObject('SlenderBitch',consistentSize* 0.55,consistentSize* 0.55)
addLuaSprite('SlenderBitch',false)

makeAnimatedLuaSprite('Ben','Ben_Drowned_BG',1145+40,175*1.5)
addAnimationByPrefix('Ben','idle','ben drowned0',24,false)
addAnimationByPrefix('Ben','look','ben drowned looking',24,false)
setScrollFactor('Ben',0.9, 0.9)
scaleObject('Ben',consistentSize* 0.55,consistentSize* 0.55)
addLuaSprite('Ben',false)
playAnim('Ben','idle')

makeAnimatedLuaSprite('Squid','Squirtward',750+40,210*1.3)
addAnimationByPrefix('Squid','bop','Squidward_idleBody',24,false)
setScrollFactor('Squid',0.9, 0.9)
scaleObject('Squid',consistentSize* 0.6,consistentSize* 0.6)
addLuaSprite('Squid',false)


makeAnimatedLuaSprite('SquidHead','Squirtward',750+40,210*1.3)
addAnimationByPrefix('SquidHead','bop','Squidward_idleHead',24,false)
setScrollFactor('SquidHead',0.9, 0.9)
scaleObject('SquidHead',consistentSize* 0.6,consistentSize* 0.6)
addLuaSprite('SquidHead',false)

addLuaSprite('OtherTable',false)

makeAnimatedLuaSprite('Jeff','Jeff',472-90, 305-40)
addAnimationByPrefix('Jeff','bop','mynamejeff instance 1',24,false)
setScrollFactor('Jeff',0.9, 0.9)
scaleObject('Jeff',consistentSize* 0.78,consistentSize* 0.78)
addLuaSprite('Jeff',false)

makeAnimatedLuaSprite('Mousetable','Mousetable',consistentPosition[1] + 825 * consistentSize, consistentPosition[2] + 630 * consistentSize)
addAnimationByPrefix('Mousetable','bop','Mousetable',24,false)
setScrollFactor('Mousetable',0.9, 0.9)
scaleObject('Mousetable',consistentSize* 0.5,consistentSize* 0.5)
addLuaSprite('Mousetable',false)
setProperty('Mousetable.x',getProperty('Mousetable.x')-getProperty('Mousetable.width')/2)
setProperty('Mousetable.y',getProperty('Mousetable.y')-getProperty('Mousetable.height'))

makeAnimatedLuaSprite('JeffArm','JeffArm',500-90, 445-40)
addAnimationByPrefix('JeffArm','bop','Only the arm shit instance 1',24,false)
setScrollFactor('JeffArm',0.9, 0.9)
scaleObject('JeffArm',consistentSize* 0.78,consistentSize* 0.78)
addLuaSprite('JeffArm',false)

    makeLuaSprite('Table','TABLE',0,0)
	scaleObject('Table',0.75,0.75)
	screenCenter('Table','xy')
	setProperty('Table.x',getProperty('Table.x')-50)
	setProperty('Table.y',getProperty('Table.y')+750)
	setObjectOrder('Table',40)
	addLuaSprite('Table',false)

    PosCharacters()
    MakeGameOver()

	
end
function PosCharacters()
	
	setObjectOrder('MXArms',getObjectOrder('Table')+1)
	setObjectOrder('HypnoArms',getObjectOrder('Table')+1)
    if boyfriendName=='LordX' then
    setCharacterX('bf',LordX[1])
    setCharacterY('bf',LordX[2])
    setObjectOrder('boyfriendGroup',getObjectOrder('Table')+1)
    setObjectOrder('dadGroup',getObjectOrder('Table')-1)
    setObjectOrder('gfGroup',getObjectOrder('Table')-1)
	LordPos='bf'
    elseif gfName=='LordX' then
	setCharacterX('gf',LordX[1])
	setCharacterY('gf',LordX[2])
	setObjectOrder('boyfriendGroup',getObjectOrder('Table')-1)
    setObjectOrder('dadGroup',getObjectOrder('Table')-1)
    setObjectOrder('gfGroup',getObjectOrder('Table')+1)
	LordPos='gf'
    else
	setCharacterX('dad',LordX[1])
	setCharacterY('dad',LordX[2])
	setObjectOrder('boyfriendGroup',getObjectOrder('Table')-1)
    setObjectOrder('dadGroup',getObjectOrder('Table')+1)
    setObjectOrder('gfGroup',getObjectOrder('Table')-1)
	LordPos='dad'
    end
    if boyfriendName=='MX' then
	setCharacterX('bf',MX[1])
	setCharacterY('bf',MX[2])
	MXPos='bf'
    elseif gfName=='MX' then
	setCharacterX('gf',MX[1])
	setCharacterY('gf',MX[2])
	MXPos='gf'
    else
	setCharacterX('dad',MX[1])
	setCharacterY('dad',MX[2])
	MXPos='dad'
    end
    if boyfriendName=='Hypno' then
	setCharacterX('bf',Hypno[1])
	setCharacterY('bf',Hypno[2])
	HypnoPos='bf'
    elseif gfName=='Hypno' then
	setCharacterX('gf',Hypno[1])
	setCharacterY('gf',Hypno[2])
	HypnoPos='gf'
    else
	setCharacterX('dad',Hypno[1])
	setCharacterY('dad',Hypno[2])
	HypnoPos='dad'
    end

	
end

function onBeatHit()
	if curBeat % 2 == 0 then
		for i=0,#pastaBoppers do
			playAnim(pastaBoppers[i],'bop')
		end 
	end
	if curBeat >= 84 then
		playAnim('Ben','look')
	end
	
end
function onUpdate(elapsed)
	if shadersEnabled then setShaderFloat('ShaderObj','iTime',getShaderFloat('ShaderObj','iTime')+elapsed) end
	if getProperty('PN_Gameover.animation.curAnim.finished') and getProperty('PN_Gameover.animation.curAnim.name')=='Trans' then
		playAnim('PN_Gameover','End')
	end
	if isDead then
        if keyJustPressed('back') then
            exitSong()
		end 
		if keyJustPressed('accept') then
            restartSong()
		end
	end
end
function onCreatePost()
	if shadersEnabled then
	runHaxeCode([[
        var shaderName = "old";
        
        game.initLuaShader(shaderName);
        
        var shader0 = game.createRuntimeShader(shaderName);
        game.camGame.setFilters([new ShaderFilter(shader0)]);
        game.getLuaObject("ShaderObj").shader = shader0;
        shader0.setFloat('iTime', 1);
    ]])
	end
	triggerEvent('Camera Follow Pos',tostring((LordX[1]+264.5-50)),tostring(LordX[2]+245-200))
end

function onEvent(eventName, value1, value2)
if eventName=='Pasta_Camera' then

if tonumber(value1)==-1 then
triggerEvent('Camera Follow Pos',tostring((LordX[1]+264.5-50)-200),tostring(LordX[2]+245-200))
elseif tonumber(value1)==1 then
	triggerEvent('Camera Follow Pos',tostring((LordX[1]+264.5-50)+200),tostring(LordX[2]+245-200))
else
	triggerEvent('Camera Follow Pos',tostring((LordX[1]+264.5-50)),tostring(LordX[2]+245-200))
end
end 
end
function onDestroy()
    runHaxeCode([[
        Application.current.window.title="Friday Night Funkin': Psych Engine";
    ]])
end
function onSongStart()
	runHaxeCode([[
		Application.current.window.title="]]..'Pasta Night'..'-'..boyfriendName..[[";
	]])
end
function onGameOver()
	setProperty('paused',true)
	runHaxeCode([[
		FlxG.sound.music.pause();
	    PlayState.instance.vocals.pause();
	]])
	setProperty('camGame.alpha',0)
	setProperty('camHUD.alpha',0)
	
	addLuaSprite('PN_Gameover',true)
	isDead=true
	
	addLuaSprite('GameoverSprites',false)

	OneCall()
	
	return Function_Stop;
	
end
function MakeGameOver()
	makeAnimatedLuaSprite('GameoverSprites','pasta/PN_LoseSprites',0,0)
	addAnimationByPrefix('GameoverSprites','idle','pastanight_Lose'..boyfriendName,24,true)
	setObjectCamera('GameoverSprites','other')
	scaleObject('GameoverSprites',3,3)
	screenCenter('GameoverSprites','xy')
	setProperty('GameoverSprites.antialiasing',false)
	makeAnimatedLuaSprite('PN_Gameover','pasta/PN_GameOver',0,0)
	setGraphicSize('PN_Gameover',screenHeight,screenHeight)
	addAnimationByIndicesLoop('PN_Gameover','idle','pastanight_curtains','0,1',24)
	addAnimationByIndices('PN_Gameover','Trans','pastanight_curtains','0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21',24)
	addAnimationByPrefix('PN_Gameover','End','pastanight_curtains_retry',24,false)
	setObjectCamera('PN_Gameover','other')
	screenCenter('PN_Gameover','x')
	setProperty('PN_Gameover.antialiasing',false)

	Animasd=false
	Call=false
end
function OneCall()
if not Call then
	Call=true
	doTweenY('GameoverSprites','GameoverSprites',getProperty('GameoverSprites.y')-50,0.2,'quadIn')
	playSound('PS_Death',1)
end
end
function onTweenCompleted(tag)
if tag=='GameoverSprites' then
	doTweenY('GameoverSprites2','GameoverSprites',getProperty('GameoverSprites.y')+600,1.8,'quadOut')
end
if tag=='GameoverSprites2' then
playAnim('PN_Gameover','Trans')
end
end



