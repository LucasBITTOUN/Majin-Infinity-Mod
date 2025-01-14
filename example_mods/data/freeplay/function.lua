
------------------SETTINGS

maxsongs = 4                                                                  -- Put here the max songs that you add (If your total songs are 4, you need to put 4 here)

songs = {'Endless', 'Endeavors', 'Chaotic Endeavors', 'Sound Test'}                        -- Put your song name here to add it to the freeplay!
enemy = {'Majin Sonic', 'Majin Sonic', 'Majin Sonic', 'Majin Sonic'}     -- Put your opponent name here to add it to the freeplay! (Put him/her in the order of the songs)

------------------DON'T TOUCH NOTHING BELOW THIS TEXT

selected = 1
followOne = 'hit'
followTwo = 'hit2'
followThree = 'hit3'

------------------

-- Thank you so much XooleDev
-- Pls follow her

function onCreate()
	function onStartCountdown() 
		if not allowCountdown then
		  return Function_Stop
		end
		
		if allowCountdown then
		  return Function_Continue
	    end
	end
	playMusic('freakyMenu', 0.8, true)

      makeLuaText('name', '0', 500, 720, 350)
      setObjectCamera('name', 'camHUD')
      setTextColor('name', 'FFFFFF')
      setTextBorder('name', 0.2, 'FFFFFF')
      setTextSize('name', 30)
      addLuaText('name')

      makeLuaText('vs', 'Girlfriend', 500, 720, 50)
      setObjectCamera('vs', 'camHUD')
      setTextColor('vs', 'FFFFFF')
      screenCenter('vs', 'x')
      setTextBorder('vs', 0.2, 'FFFFFF')
      setTextSize('vs', 45)
      addLuaText('vs')

	return Function_Continue;
end

function onUpdate()
      if keyJustPressed('pause') then
	  exitMenu()
      end

	if keyboardJustPressed('UP') then
         selected = selected - 1
         followOne = 'hit2'
         followTwo = 'hit3'
         followThree = 'hit1'
         setProperty('margin3.y', -92)
         doTweenY('MarginThreeY', 'margin3', -32, 0.2, 'linear')
         doTweenY('MarginTwoY', 'margin2', 282.5, 0.2, 'linear')
         doTweenX('MarginTwoX', 'margin2', 195.5, 0.2, 'linear')
         doTweenY('MarginTwoScaleY', 'margin2.scale', 1.2, 0.2, 'linear')
         doTweenX('MarginTwoScaleX', 'margin2.scale', 1.2, 0.2, 'linear')
         doTweenY('MarginOneY', 'margin', 602, 0.2, 'linear')
         doTweenX('MarginOneX', 'margin', 174, 0.2, 'linear')
         doTweenY('MarginOneScaleY', 'margin.scale', 1.0, 0.2, 'linear')
         doTweenX('MarginOneScaleX', 'margin.scale', 1.0, 0.2, 'linear')
         setProperty('hit2.x', 183)
         doTweenY('HitTWO', 'hit2', 274, 0.2, 'linear')
         setProperty('hit.y', 211)
         doTweenY('HitONE', 'hit', -22, 0.2, 'linear')
         setProperty('hit3.y', 183)
         doTweenY('HitTHREE', 'hit3', 602, 0.2, 'linear')
         playSound('select');
      elseif keyboardJustPressed('DOWN') then 
         selected = selected + 1
         followOne = 'hit3'
         followTwo = 'hit'
         followThree = 'hit2'
         doTweenY('MarginOneY', 'margin', -52, 0.2, 'linear')
         doTweenX('MarginOneX', 'margin', 174, 0.2, 'linear')
         doTweenY('MarginOneScaleY', 'margin.scale', 1.0, 0.2, 'linear')
         doTweenX('MarginOneScaleX', 'margin.scale', 1.0, 0.2, 'linear')
         doTweenY('MarginThreeY', 'margin3', 282.5, 0.2, 'linear')
         doTweenX('MarginThreeX', 'margin3', 195.5, 0.2, 'linear')
         doTweenY('MarginThreeScaleY', 'margin3.scale', 1.2, 0.2, 'linear')
         doTweenX('MarginThreeScaleX', 'margin3.scale', 1.2, 0.2, 'linear')
         setProperty('margin4.y', 622)
         doTweenY('MarginFourY', 'margin4', 592, 0.2, 'linear')
         setProperty('margin2.visible', false)
         setProperty('margin4.visible', true)
         setProperty('hit2.y', 274)
         doTweenY('HitTWO', 'hit2', -22, 0.2, 'linear')
         setProperty('hit.y', 211)
         doTweenY('HitONE', 'hit', -22, 0.2, 'linear')
         setProperty('hit3.x', 183)
         doTweenY('HitTHREE', 'hit3', 274, 0.2, 'linear')
         playSound('select');
      end

      if keyboardJustPressed('UP') and selected == 0 then
        selected = maxsongs
      elseif keyboardJustPressed('DOWN') and selected == maxsongs + 1 then
        selected = 1
      end

      if getProperty('margin.y') == -52 and getProperty('margin3.y') == 282.5 and getProperty('margin4.y') == 592 then
        followOne = 'hit'
        followTwo = 'hit2'
        followThree = 'hit3'
        setProperty('margin.y', 262)
        setProperty('margin.x', 170)
        scaleLuaSprite('margin', 1.2, 1.2)
        setProperty('margin3.y', 592)
        setProperty('margin3.x', 200)
        scaleLuaSprite('margin3', 1.0, 1.0)
        setProperty('margin2.y', -32)
        setProperty('margin2.visible', true)
        setProperty('margin4.visible', false)
        setProperty('hit2.x', 211)
        setProperty('hit2.y', -22)
        setProperty('hit.x', 183)
        setProperty('hit.y', 274)
        setProperty('hit3.x', 211)
        setProperty('hit3.y', 602)
      elseif getProperty('margin.y') == 602 and getProperty('margin3.y') == -32 and getProperty('margin2.y') == 282.5 then
        followOne = 'hit'
        followTwo = 'hit2'
        followThree = 'hit3'
        setProperty('margin.y', 262)
        setProperty('margin.x', 170)
        scaleLuaSprite('margin', 1.2, 1.2)
        setProperty('margin3.y', 592)
        setProperty('margin3.x', 200)
        scaleLuaSprite('margin3', 1.0, 1.0)
        setProperty('margin2.y', -32)
        setProperty('margin2.x', 200)
        scaleLuaSprite('margin2', 1.0, 1.0)
        setProperty('hit2.x', 211)
        setProperty('hit2.y', -22)
        setProperty('hit.x', 183)
        setProperty('hit.y', 274)
        setProperty('hit3.x', 211)
        setProperty('hit3.y', 602)
      end

	if keyboardJustPressed('SPACE') then
        loadSong(songs[selected])
        playSound('play')
      end

  if selected == 1 then
    removeLuaSprite('image2', true)
    makeLuaSprite('image2', 'freeplay/pictures/' .. songs[maxsongs], getProperty('hit2.x'), getProperty('hit2.y'))
    scaleLuaSprite('image2', 1.02, 1.02)
    addLuaSprite('image2')
  else
    removeLuaSprite('image2', true)
    makeLuaSprite('image2', 'freeplay/pictures/' .. songs[selected -1], getProperty('hit2.x'), getProperty('hit2.y'))
    scaleLuaSprite('image2', 1.02, 1.02)
    addLuaSprite('image2')
  end

  if selected == maxsongs then
    removeLuaSprite('image3', true)
    makeLuaSprite('image3', 'freeplay/pictures/' .. songs[1], getProperty('hit3.x'), getProperty('hit3.y'))
    scaleLuaSprite('image3', 1.02, 1.02)
    addLuaSprite('image3')
  else
    removeLuaSprite('image3', true)
    makeLuaSprite('image3', 'freeplay/pictures/' .. songs[selected +1], getProperty('hit3.x'), getProperty('hit3.y'))
    scaleLuaSprite('image3', 1.02, 1.02)
    addLuaSprite('image3')
  end

  if songs[selected] then
        removeLuaSprite('image', true)
        setTextString('vs', '' .. enemy[selected])
        setTextString('name', '' .. songs[selected])
        makeLuaSprite('image', 'freeplay/pictures/' .. songs[selected], getProperty(followOne ..'.x'), getProperty(followOne ..'.y'))
        scaleLuaSprite('image', 1.23, 1.23)
        addLuaSprite('image')
  end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if keyJustPressed('pause') and songName == 'Freeplay' then
	exitMenu();
   end
end

function exitMenu()
  exitSong(true);
end