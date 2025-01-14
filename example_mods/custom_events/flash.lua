function onCreate()
	createFlash(0.001,'hud',false)--for not lag
end
function createFlash(alpha,layer,front)
	makeLuaSprite('flashEvent',nil,0,0)
	setObjectCamera('flashEvent',layer)
	makeGraphic('flashEvent',screenWidth,screenHeight,'FFFFFF')
	setProperty('flashEvent.alpha',alpha)
	addLuaSprite('flashEvent',front)
end
function onEvent(name,v1,v2)
	if name == 'flash' then
		local speed = 0.4
		local color = 'FFFFFF'
		local layer = 'hud'
		local front = true
		local alphaStart = 1
		if v1 ~= '' then
			local v1split = split(v1,',')
			color = v1split[1]
			alphaStart = v1split[2]
			if alphaStart == nil then
				alphaStart = 1
			end
		end
		if v2 ~= '' then
			local v2split = split(v2,',')
			speed = v2split[1]
			layer = v2split[2]
			front = v2split[3]
			if layer == nil then
				layer = 'game'
			end
			if front == nil then
				front = true
			end
		end
		
		if layer == 'game' or layer == 'camGame' then
			front = false
			layer = 'hud'
		end
		if luaSpriteExists('flashEvent') then
			setObjectCamera('flashEvent',layer)
			setProperty('flashEvent.alpha',alphaStart)
		else
			createFlash(alphaStart,layer,front)
		end
		setProperty('flashEvent.color',getColorFromHex(color))
		doTweenAlpha('flashEventBye','flashEvent',0,speed,'linear')
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

function onTweenCompleted(tag)
	if tag == 'flashEventBye' then
		currentLayer = 'hud'
		removeLuaSprite('flashEvent',true)
	end
end