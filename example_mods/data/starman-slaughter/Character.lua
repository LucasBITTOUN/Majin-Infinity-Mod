--[[
    Code made by Drawoon_
    If use it give credits
]]
function onCreate()
    sing={'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
    NewsCharacter={{Type='BF',Name='boyfriend'},{Type='DAD',Name='dad'}}--Don't Delete
    DadSinger={}
    BfSinger={}
    --[[
    Types="BF"/'DAD'
    CharName='Name from the json'
    PosX/PosY=Add from Pos json stage

    --CreateCharacter(CharName,Types,PosX,PosY,Tag) 
    EN:Add Character
    ES:Añade un personaje

    --RemoveCharacter(Tag) 
    EN: Delete the Character
    ES: Borra el personaje

    --ChangeSingChar(Tag/'All',Types) 
    EN: Change Charater Singer
    ES: Cambia el personaje que canta

    --CharacterExist(tag):Bool 
    EN:if Character exist=true
    ES:Si el pesonaje existe devuelve true

    --FindArrayPos(Tag):Int 
    EN:Find Charater Array Pos
    ES:Encuentra la posicion del array del personaje

    You can use lua setProperty()/getProperty() and all lua fuctions
    ]]

end
function onCreatePost()
    for i = 0, getProperty('unspawnNotes.length')-1 do
        setPropertyFromGroup('unspawnNotes', i, 'noAnimation',true)  
        setPropertyFromGroup('unspawnNotes', i, 'noMissAnimation',true)  
    end
    CreateCharacter('majin-sonic','DAD',-200,400,'OPPPico2')--Desmostration character
    ChangeSingChar('boyfriend','BF')--Set the deafault bf singer
    ChangeSingChar('dad','DAD')--Set the deafault dad singer
end
function onBeatHit()
    for i=1,#NewsCharacter do
        BeatTag= NewsCharacter[i]["Name"]
    if curBeat% getProperty(BeatTag..'.danceEveryNumBeats')==0 and getProperty(BeatTag..'.animation.curAnim')~=nil and not stringStartsWith(getProperty(BeatTag..'.animation.curAnim.name'),'sing') and not getProperty(BeatTag..'.stunned') then
    runHaxeCode([[
            getVar(']]..BeatTag..[[').dance(); 
    ]])
    end
    end
end
function onUpdate(elapsed)
    for i=1,#NewsCharacter do
        UpdateTag= NewsCharacter[i]["Name"]
    if getProperty(UpdateTag..'.holdTimer') > stepCrochet * (0.0011 / playbackRate) * getProperty(UpdateTag..'.singDuration') and  stringStartsWith(getProperty(UpdateTag..'.animation.curAnim.name'),'sing') and not stringEndsWith(getProperty(UpdateTag..'.animation.curAnim.name'),'miss') then
        runHaxeCode([[
            getVar(']]..UpdateTag..[[').dance(); 
        ]])
    end
    end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if DadSinger[1]=='All' then
    for i=1,#NewsCharacter do
        if NewsCharacter[i]["Type"]=='DAD' then
            runHaxeCode([[
                getVar(']]..NewsCharacter[i]["Name"]..[[').playAnim(']]..sing[noteData+1]..[[',true);
                getVar(']]..NewsCharacter[i]["Name"]..[[').holdTimer=0;
            ]])
            if NewsCharacter[i]["Name"]=='dad' then
                runHaxeCode([[
                    game.dad.playAnim(']]..sing[noteData+1]..[[',true);
                    game.dad.holdTimer=0;
                ]])
            end
        end
    end
    else
        for i=1,#DadSinger do
                runHaxeCode([[
                    getVar(']]..DadSinger[i]..[[').playAnim(']]..sing[noteData+1]..[[',true);
                    getVar(']]..DadSinger[i]..[[').holdTimer=0;
                ]])
            if DadSinger[i]=='dad' then
                runHaxeCode([[
                    game.dad.playAnim(']]..sing[noteData+1]..[[',true);
                    game.dad.holdTimer=0;
                ]])
            end
        end
    end
end
function goodNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if BfSinger[1]=='All' then
    for i=1,#NewsCharacter do
        if NewsCharacter[i]["Type"]=='BF' then
            runHaxeCode([[
                getVar(']]..NewsCharacter[i]["Name"]..[[').playAnim(']]..sing[noteData+1]..[[',true);
                getVar(']]..NewsCharacter[i]["Name"]..[[').holdTimer=0;
            ]])
        end
        if NewsCharacter[i]["Name"]=='boyfriend' then
            runHaxeCode([[
                game.boyfriend.playAnim(']]..sing[noteData+1]..[[',true);
                game.boyfriend.holdTimer=0;
            ]])
        end
    end
    else
        for i=1,#BfSinger do
        runHaxeCode([[
            getVar(']]..BfSinger[i]..[[').playAnim(']]..sing[noteData+1]..[[',true);
            getVar(']]..BfSinger[i]..[[').holdTimer=0;
        ]])
        if BfSinger[i]=='boyfriend' then
            runHaxeCode([[
                game.boyfriend.playAnim(']]..sing[noteData+1]..[[',true);
                game.boyfriend.holdTimer=0;
            ]])
        end
        end
    end
end
function noteMiss(membersIndex, noteData, noteType, isSustainNote)
    if BfSinger[1]=='All' then
    for i=1,#NewsCharacter do
        if NewsCharacter[i]["Type"]=='BF' then
            runHaxeCode([[
            getVar(']]..NewsCharacter[i]["Name"]..[[').playAnim(']]..sing[noteData+1]..[['+'miss',true);
            ]])
        end
        if NewsCharacter[i]["Name"]=='boyfriend' then
            runHaxeCode([[
                game.boyfriend.playAnim(']]..sing[noteData+1]..[['+'miss',true);
            ]])
        end
    end
else
    for i=1,#BfSinger do
        runHaxeCode([[
            getVar(']]..BfSinger[i]..[[').playAnim(']]..sing[noteData+1]..[['+'miss',true);
        ]])
        if BfSinger[i]=='boyfriend' then
            runHaxeCode([[
                game.boyfriend.playAnim(']]..sing[noteData+1]..[['+'miss',true);
            ]])
        end
    end
end
end
function onEvent(eventName, value1, value2)
    if eventName=='Play Animation' then
        if CharacterExist(value2) then
        runHaxeCode([[
            getVar(']]..value2..[[').playAnim(']]..value1..[[',true);
            getVar(']]..value2..[[').specialAnim=true;
        ]])
        end
    end
    if eventName=='ChangeSingCharacter' then
        ChangeSingChar(value1,value2)
    end
end
function eventEarlyTrigger(event)
    if event=='ChangeSingCharacter' then
        return stepCrochet
    end
end
function CreateCharacter(CharName,tYpe,PosX,PosY,Tag)
    if CharacterExist(Tag) then
        RemoveCharacter(Tag)
    end
    if tYpe =='DAD' then
        runHaxeCode([[
            var Dad2:Character;
            Dad2 = new Character(]]..PosX+getCharacterX('dad')..[[,]]..PosY+getCharacterY('dad')..[[,']]..CharName..[[');
            game.add(Dad2);
            Dad2.dance();
            setVar(']]..Tag..[[',Dad2);
        ]])
    else 
        runHaxeCode([[
            var BF2:Boyfriend;
            BF2 = new Boyfriend(]]..PosX+getCharacterX('bf')..[[,]]..PosY+getCharacterY('bf')..[[,']]..CharName..[[');
            game.add(BF2);
            BF2.dance();
            setVar(']]..Tag..[[',BF2);
        ]])
    end
    --ChangeSingChar(Tag,tYpe)
    table.insert(NewsCharacter,{Type=tYpe,Name=Tag})


end
function RemoveCharacter(Tag)
    runHaxeCode([[
        getVar(']]..Tag..[[').kill();
        removeVar(']]..Tag..[[');
    ]])
    for i=1,#NewsCharacter do
        if NewsCharacter[i]["Name"]==Tag then
            table.remove(NewsCharacter, i)
        end
    end
end
function FindArrayPos(Tag)
    for i=1,#NewsCharacter do
        if NewsCharacter[i]["Name"]==Tag then
            return i
        end
    end
end
function CharacterExist(tag)
    for i=1,#NewsCharacter do
        if NewsCharacter[i]["Name"]==tag then
            return true 
        end
        if i==#NewsCharacter then
            return false
        end
    end
end
function ChangeSingChar(Tag,Types)
    Tag=stringSplit(Tag,',')
    if Types=='DAD' then
        DadSinger=Tag
    elseif Types=='BF' then 
        BfSinger=Tag
    end
end