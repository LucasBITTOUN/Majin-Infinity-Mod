function onCreate()

    makeAnimatedLuaSprite('boppers', 'OldMajin/FII_BG', -300, -200)
    addAnimationByPrefix('boppers','bop','sonicboppers',24,true)
    addLuaSprite('boppers',false)
    objectPlayAnimation('boppers','bop',true)
end