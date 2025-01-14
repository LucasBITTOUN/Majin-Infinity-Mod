--Code made by Drawoon_
--if you use this please give me credit
function onCreate()
initSaveData('SelecterPN','SelecterMenuData')
OpenBefore=getDataFromSave('SelecterPN','OpenBefore')
if OpenBefore==nil then setDataFromSave('SelecterPN','OpenBefore',false) end


FirstTime=getDataFromSave('SelecterPN','FirstTime')
if FirstTime then 
    setDataFromSave('SelecterPN','OpenBefore',false)
    setDataFromSave('SelecterPN','FirstTime',false)
    FirstTime=getDataFromSave('SelecterPN','FirstTime')
end
    OpenBefore=getDataFromSave('SelecterPN','OpenBefore')
    if not OpenBefore then
    
    CharacterSelecte=false
    Character={'MX','LordX','Hypno'}
    Scale=3
    Separation=100
    Pos={500,475}
    OffsetCharacter={{-60,-57},{0,0},{0,-18}}
    OffsetArrow={0,0,-12}
    Selecter=1
    playMusic('PastaNightSelect',1,true)
    makeLuaSprite('BGselect',nil,0,0)
    makeGraphic('BGselect',screenWidth,screenHeight,'000000')
    setObjectCamera('BGselect','other')
    addLuaSprite('BGselect',false)
    makeLuaSprite('BGStage','pasta/pastaSelect_BG',0,0)
    setGraphicSize('BGStage',screenHeight,screenHeight)
    setProperty('BGStage.antialiasing',false)
    screenCenter('BGStage','x')
    setObjectCamera('BGStage','other')

    addLuaSprite('BGStage',false)
    makeLuaSprite('Selector','pasta/PastaSelect_Arrow',0,Pos[2]-100)
    scaleObject('Selector',Scale,Scale)
    setObjectCamera('Selector','other')
    setProperty('Selector.antialiasing',false)
    addLuaSprite('Selector',false)

  
    
    AddCaharacter()
    else
        CharacterSelecte=true
    end
end
function onStartCountdown()
if not OpenBefore then
if not CharacterSelecte then
	return Function_Stop;
    
else
    
    return Function_Continue;
end
else
    return Function_Continue;
end
end
function AddCaharacter()
for i=1 ,#Character do 
makeLuaSprite(Character[i],'pasta/PastaSelect_'..Character[i]..'_01',0,0)
setProperty(Character[i]..'.antialiasing',false)
scaleObject(Character[i],Scale,Scale)
setObjectCamera(Character[i],'other')
addLuaSprite(Character[i],false)

makeLuaSprite(Character[i]..'Select','pasta/PastaSelect_'..Character[i]..'_02',0,0)
setProperty(Character[i]..'Select'..'.antialiasing',false)
scaleObject(Character[i]..'Select',Scale,Scale)
setObjectCamera(Character[i]..'Select','other')
addLuaSprite(Character[i]..'Select',false)

makeLuaSprite(Character[i]..'UnSelect','pasta/PastaSelect_'..Character[i]..'_03',0,0)
setProperty(Character[i]..'UnSelect'..'.antialiasing',false)
scaleObject(Character[i]..'UnSelect',Scale,Scale)
setObjectCamera(Character[i]..'UnSelect','other')
addLuaSprite(Character[i]..'UnSelect',false)
if i~=1 then
    setProperty(Character[i]..'.alpha',0)
else
    setProperty(Character[i]..'UnSelect'..'.alpha',0)
end
setProperty(Character[i]..'Select'..'.alpha',0)
end
PosCharacters()
end



function PosCharacters()
for i=0,#Character-1 do
    setProperty(Character[i+1]..'.x',Pos[1]+Separation*i+OffsetCharacter[i+1][1])
    setProperty(Character[i+1]..'.y',Pos[2]+OffsetCharacter[i+1][2])
    setProperty(Character[i+1]..'Select'..'.x',Pos[1]+Separation*i+OffsetCharacter[i+1][1])
    setProperty(Character[i+1]..'Select'..'.y',Pos[2]+OffsetCharacter[i+1][2])
    setProperty(Character[i+1]..'UnSelect'..'.x',Pos[1]+Separation*i+OffsetCharacter[i+1][1])
    setProperty(Character[i+1]..'UnSelect'..'.y',Pos[2]+OffsetCharacter[i+1][2])
end
setProperty('Selector.x',getProperty(Character[1]..'.x')+getProperty(Character[Selecter]..'.width')/2-8*Scale+OffsetArrow[Selecter])
end
function onUpdate(elapsed)
if not CharacterSelecte then
if keyboardJustPressed('LEFT') or keyJustPressed('left') then
    SelectLeft()
end
if keyboardJustPressed('RIGHT') or keyJustPressed('right') then
    SelectRight()
end
if keyboardJustPressed('ENTER') or keyJustPressed('accept') then
    AcceptSelect()
end
end
end
function SelectRight()
if Selecter<3 then
    Selecter=Selecter+1
    setProperty('Selector.x',getProperty(Character[Selecter]..'.x')+getProperty(Character[Selecter]..'.width')/2-8*Scale+OffsetArrow[Selecter])
    setProperty(Character[Selecter-1]..'.alpha',0)
    setProperty(Character[Selecter-1]..'UnSelect'..'.alpha',1)
    setProperty(Character[Selecter]..'.alpha',1)
    setProperty(Character[Selecter]..'UnSelect'..'.alpha',0)
end
end
function SelectLeft()
    if Selecter>1 then
        Selecter=Selecter-1
        setProperty('Selector.x',getProperty(Character[Selecter]..'.x')+getProperty(Character[Selecter]..'.width')/2-8*Scale+OffsetArrow[Selecter])
        setProperty(Character[Selecter+1]..'.alpha',0)
        setProperty(Character[Selecter+1]..'UnSelect'..'.alpha',1)
        setProperty(Character[Selecter]..'UnSelect'..'.alpha',0)
        setProperty(Character[Selecter]..'.alpha',1)
        
    end
end
function AcceptSelect()
    CharacterSelecte=true
    runTimer('Selecting',0.5,3)
    setDataFromSave('SelecterPN','OpenBefore',true)
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag=='Select' then
    if Selecter==1 then
    
        loadSong('pasta-night',1)
    elseif Selecter==2 then
        loadSong('pasta-night',2)
    else
        loadSong('pasta-night',0) 
    end
    
end

if tag=='Selecting' then
   if loopsLeft==2 then
    setProperty(Character[Selecter]..'Select'..'.alpha',1)
    setProperty(Character[Selecter]..'.alpha',0)
   elseif loopsLeft==1 then
    setProperty(Character[Selecter]..'Select'..'.alpha',0)
    setProperty(Character[Selecter]..'.alpha',1)
   else
    runTimer('Select',1)
   end
end
end
function onEndSong()
    setDataFromSave('SelecterPN','OpenBefore',false)
    flushSaveData('SelecterPN')
end
function onGameOverConfirm(isNotGoingToMenu)
if not isNotGoingToMenu then
    setDataFromSave('SelecterPN','OpenBefore',false)
    flushSaveData('SelecterPN')
end
end
function onDestroy()
if getProperty('vocals.volume')==1 then
    setDataFromSave('SelecterPN','OpenBefore',false)
    flushSaveData('SelecterPN')
end
end

    
