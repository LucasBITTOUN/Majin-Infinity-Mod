function onEvent(name,v1,v2)
    if name == 'cinematic' then
        local bordersSize = 115
        local easing = 'quartOut'
        local duration = 1
        local enable = 'true'
        local layer = 'hud'

        if v1 ~= '' then
            local v1split = split(v1,',')
            enable = string.lower(v1split[1])
            bordersSize = tonumber(v1split[2])
            layer = v1split[3]
            

            if bordersSize == '.' or bordersSize == nil then
                bordersSize = 115
            end
            if layer == '.' or layer == nil then
                layer = 'hud'
            end
        end
        if v2 ~= '' then
            local v2split = split(v2,',')
            duration = tonumber(v2split[1])
            easing = v2split[2]
            if easing == nil then
                easing = 'quartOut'
            end
        end
        if enable ~= 'false' then
            for cinematicBorders = 1,2 do
                if cinematicBorders == 1 then
                    makeLuaSprite('cinematicBorders'..cinematicBorders,nil,0,bordersSize * -1)
                else
                    makeLuaSprite('cinematicBorders'..cinematicBorders,nil,0,screenHeight)
                end
                makeGraphic('cinematicBorders'..cinematicBorders,screenWidth,bordersSize,'000000')
                if layer == 'game' then
                    setObjectCamera('cinematicBorders'..cinematicBorders,'hud')
                    addLuaSprite('cinematicBorders'..cinematicBorders,false)
                else
                    setObjectCamera('cinematicBorders'..cinematicBorders,layer)
                    addLuaSprite('cinematicBorders'..cinematicBorders,true)
                end

                
                if duration ~= 0 then
                    if cinematicBorders == 1 then
                        doTweenY('cinematicBordersY'..cinematicBorders,'cinematicBorders'..cinematicBorders,0,duration,easing)
                    else
                        doTweenY('cinematicBordersY'..cinematicBorders,'cinematicBorders'..cinematicBorders,screenHeight - bordersSize,duration,easing)
                    end
                else
                    cancelTween('cinematicBordersY'..cinematicBorders)
                    if cinematicBorders == 1 then
                        setProperty('cinematicBorders'..cinematicBorders..'.y',0)
                    else
                        setProperty('cinematicBorders'..cinematicBorders..'.y',screenHeight - bordersSize)
                    end
                end

            end
        else
            for cinematicBorders = 1,2 do
                if duration ~= 0 then
                    if cinematicBorders == 1 then
                        doTweenY('cinematicBordersY'..cinematicBorders,'cinematicBorders'..cinematicBorders,bordersSize *-1,duration,easing)
                    else
                        doTweenY('cinematicBordersY'..cinematicBorders,'cinematicBorders'..cinematicBorders,screenHeight,duration,easing)
                    end
                else
                    removeLuaSprite('cinematicBorders'..cinematicBorders,false)
                end
            end
        end
        
    end
end
function split(text,argument)
    local array = {}
    local founded = true
    local pos = 0
    while founded == true do
        
    
        founded = false
        local split,_ = string.find(text,argument,pos)
        local number = string.sub(text,pos)
        if split then
            number = string.sub(text,pos,split-1)
            founded = true
            pos = _+1
        else
            if pos == 0 then
                array = {number}
            end
            break
        end
        table.insert(array,number)
    end

    return array
end