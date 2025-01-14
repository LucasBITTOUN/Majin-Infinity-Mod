local popsLength = 0
local popsCreated = {}

function onCreate()
    precacheImage('error_popups')
    makeLuaSprite('fatalCursor','fatal_mouse_cursor',-10,-10)
    setObjectCamera('fatalCursor','other')
    addLuaSprite('fatalCursor',true)
end
function onCreatePost()
    setPropertyFromClass('flixel.FlxG','mouse.visible',false)
end
function onEvent(name,v1,v2)
    if name == 'Fatality Popup' then
        popsLength = popsLength + 1
        table.insert(popsCreated,popsLength)
        local popXMin = -50
        local popXMax = 1000
        if isRunning('extra_scripts/oldScreen') then -- Detect if is on old screen
            popXMin = 150
            popXMax = 700
        end
        local pop = 'FatalityPopup'..popsLength
        makeAnimatedLuaSprite(pop,'error_popups',getRandomInt(popXMin,popXMax),getRandomInt(0,screenHeight - 264))
        addAnimationByPrefix(pop,'error','idle',24,false)
        addAnimationByPrefix(pop,'byeError','bye',24,false)
        playAnim(pop,'error')
        setProperty(pop..'.antialiasing',false)
        setObjectCamera(pop,'other')
        scaleObject(pop,1.6,1.6)
        addLuaSprite(pop,true)
        setObjectOrder('fatalCursor',getObjectOrder(pop) + 1)
        if tonumber(v2) ~= nil then
            runTimer('popDelete'..popsLength,tonumber(v2))
        end
    elseif name == 'Clear Fatality Popups' then
        for index, id in pairs(popsCreated) do
            if id ~= nil then
                playAnim('FatalityPopup'..id,'byeError',true)
            end
        end
    end
end
function onUpdate()
    local mouseX = getMouseX('other')
    local mouseY = getMouseY('other')
    if popsLength > 0 then
        for pops, id in pairs(popsCreated) do
            if id ~= nil then
                local name = 'FatalityPopup'..id
                if luaSpriteExists(name) then
                    if mouseClicked() and mouseX >= getProperty(name..'.x') + (getProperty(name..'.width')/2.4) and mouseX <= getProperty(name..'.x') + (getProperty(name..'.width')/1.75) and mouseY >= getProperty(name..'.y') + (getProperty(name..'.height')/1.5) and mouseY <= getProperty(name..'.y') + (getProperty(name..'.height')/1.05)  then
                        playAnim(name,'byeError',false)
                    end
                    if getProperty(name..'.animation.curAnim.finished') and getProperty(name..'.animation.curAnim.name') == 'byeError' then
                        removeLuaSprite('FatalityPopup'..id,true)
                        table.remove(popsCreated,pops)
                    end
                end
            end
        end
    end
    setProperty('fatalCursor.x',mouseX)
    setProperty('fatalCursor.y',mouseY)

end
function onTimerCompleted(tag)
    if string.find(tag,'popDelete',0,true) ~= nil then
        for pops, id in pairs(popsCreated) do
            if id ~= nil and tag == 'popDelete'..id  then
                playAnim('FatalityPopup'..id,'byeError',false)
            end
        end
    end
end