--[[

Script made by JoLteon#1881

credits not necessary, but if you add it it would be nice

]]


-- //// options ////

color = '00FF00' --the color of the chroma
--FF0000 = red
--00FF00 = green
--0000FF = blue

chromakey = true

byenotes = false
botTextVisible = true
healthInf = false
iconsVisible = true

-- //// don't edit the code unless you know what you're doing ////

function onCreate()

if chromakey == true then
makeLuaSprite('chroma', nil, 0, 0)
makeGraphic('chroma', 10, 10, color)
addLuaSprite('chroma', false)
setObjectCamera('chroma', "hud")
setGraphicSize('chroma', screenWidth, screenHeight);
end

function onUpdatePost(elapsed)
if healthInf == true then
setProperty("health", 1)
end
end
function onUpdate()
if chromakey == true then

if botTextVisible == false then
setTextString("botplayTxt", '')
end
if iconsVisible == false then
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

setProperty('healthBar.visible', false)

setProperty('healthBarBG.visible',false)
end
end
if byenotes == true then for i = 0,7 do setPropertyFromGroup('strumLineNotes', i, "x", getPropertyFromGroup('strumLineNotes', i, "x") + 500) end end end end
