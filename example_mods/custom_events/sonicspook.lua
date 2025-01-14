function onCreate()
makeAnimatedLuaSprite('Jumpscare', 'exe/sonicJUMPSCARE', 0, 0);
addAnimationByPrefix('Jumpscare', 'sonicSPOOK', 'sonicSPOOK', 24, false);
setObjectCamera('Jumpscare', 'other');
setProperty('Jumpscare.alpha', 0.0001);
objectPlayAnimation('Jumpscare', 'sonicSPOOK', false);
addLuaSprite('Jumpscare', true);
end

function onEvent(name,value1,value2)
if name == 'sonicspook' then
setProperty('Jumpscare.alpha', 1);		
objectPlayAnimation('Jumpscare', 'sonicSPOOK', false);
playSound('jumpscare', 1);
playSound('jumpscare2', 1);
runTimer('desaparecer', 1, 0);
end
end

function onTimerCompleted(tag)
if tag == 'desaparecer' then
setProperty('Jumpscare.alpha', 0.0001);
end
end
