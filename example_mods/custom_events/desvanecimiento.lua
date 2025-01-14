function onEvent(name, value1, value2)
tiempo = tonumber(value2);		
if name == 'desvanecimiento' then
if value1 == 'dad' then
noteTweenAlpha("A1", 0, 1, tiempo, "linear")
noteTweenAlpha("A2", 1, 1, tiempo, "linear")
noteTweenAlpha("A3", 2, 1, tiempo, "linear")
noteTweenAlpha("A4", 3, 1, tiempo, "linear")

noteTweenAlpha("A5", 4, 0, tiempo, "linear")
noteTweenAlpha("A6", 5, 0, tiempo, "linear")
noteTweenAlpha("A7", 6, 0, tiempo, "linear")
noteTweenAlpha("A8", 7, 0, tiempo, "linear")
end
if value1 == 'bf' then
noteTweenAlpha("A1", 0, 0, tiempo, "linear")
noteTweenAlpha("A2", 1, 0, tiempo, "linear")
noteTweenAlpha("A3", 2, 0, tiempo, "linear")
noteTweenAlpha("A4", 3, 0, tiempo, "linear")

noteTweenAlpha("A5", 4, 1, tiempo, "linear")
noteTweenAlpha("A6", 5, 1, tiempo, "linear")
noteTweenAlpha("A7", 6, 1, tiempo, "linear")
noteTweenAlpha("A8", 7, 1, tiempo, "linear")
end
if value1 == 'off' then
noteTweenAlpha("A1", 0, 1, tiempo, "linear")
noteTweenAlpha("A2", 1, 1, tiempo, "linear")
noteTweenAlpha("A3", 2, 1, tiempo, "linear")
noteTweenAlpha("A4", 3, 1, tiempo, "linear")	

noteTweenAlpha("A5", 4, 1, tiempo, "linear")
noteTweenAlpha("A6", 5, 1, tiempo, "linear")
noteTweenAlpha("A7", 6, 1, tiempo, "linear")
noteTweenAlpha("A8", 7, 1, tiempo, "linear")
end
end
end