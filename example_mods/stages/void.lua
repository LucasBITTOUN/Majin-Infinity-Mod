function onCreate()
    setProperty('camGame.bgColor',getColorFromHex('FFFFFF'))
end
function onDestroy()
    runHaxeCode(
        [[
            FlxG.camera.bgColor = 0;
            return;
        ]]
    )
end