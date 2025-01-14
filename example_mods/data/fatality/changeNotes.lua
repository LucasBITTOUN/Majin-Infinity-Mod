function onCreatePost()
    for strumLineNotes = 0,3 do
        setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','fatal')
        if version >= '0.7' then
            setPropertyFromGroup('strumLineNotes', strumLineNotes,'useRGBShader',false)
        end
    end
    for notes = 0,getProperty('unspawnNotes.length')-1 do
        if not getPropertyFromGroup('unspawnNotes', notes,'mustPress') and (getPropertyFromGroup('unspawnNotes', notes,'texture') == '' or getPropertyFromGroup('unspawnNotes', notes,'texture') == nil) then
            setPropertyFromGroup('unspawnNotes',notes,'texture','fatal')
            setPropertyFromGroup('unspawnNotes',notes,'rgbShader.enabled',false)
        end
    end
end