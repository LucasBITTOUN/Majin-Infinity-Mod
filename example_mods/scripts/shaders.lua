local enabledSongs = {'digitalized','substantial','sunshine','sunshine-encore','expulson','misstletoe','slaybells','gods will','Playful'}
function onCreatePost()
    for enableShader = 1,#enabledSongs do
        if songName == enabledSongs[enableShader] then
            initLuaShader("tailsVCR")
            
            makeLuaSprite("shaderImage")
            makeGraphic("shaderImage", screenWidth, screenHeight)
            
            setSpriteShader("shaderImage", "tailsVCR")
            
            addHaxeLibrary("ShaderFilter", "openfl.filters")
            runHaxeCode([[
                trace(ShaderFilter);
                game.camGame.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
                game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("shaderImage").shader)]);
            ]])
        end
    end
end