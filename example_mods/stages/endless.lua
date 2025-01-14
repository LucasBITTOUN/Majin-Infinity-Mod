local mazin = {'skyL','skyR','sky','skyflip','skyflipL','skyflipR','starboi','mazinz-ext','mazinz','mazinzR','mazinzRY','mazinzL','mazinzLY','bushL','bushR','bush','floor-ext','floorL','floorR','floor','floorFlip','floorFlipL','floorFlipR','floor-extFlip','tree-extL','tree-extLX','tree-extR','tree-extRX','tree-ext','tree'}
local index = 1
local majinNew = {'theLeftMajin','theRightMajin','theGround','theMajin','theMountains','theBack','theBush','theSky'}
local majinV1 = {'theSkyV1','thefloorV1','pill3V1','pill2V1','FbgV1','theFog'}
	--9
function onCreate()
	--skys
	makeAnimatedLuaSprite('skyL', 'stages/FunInfiniteStage/sky', -3779, -780);
	addAnimationByPrefix('skyL', 'sky instance ','sky instance ', 24, true)
	setGraphicSize('skyL', getProperty('skyL.width') * 1.5)
	setScrollFactor ('skyL', 0.8, 0.9);
	setProperty('skyL.flipX',true)
	addLuaSprite('skyL', false);
	
	makeAnimatedLuaSprite('skyR', 'stages/FunInfiniteStage/sky', 2079, -780);
	addAnimationByPrefix('skyR', 'sky instance ','sky instance ', 24, true)
	setGraphicSize('skyR', getProperty('skyR.width') * 1.5)
	setScrollFactor ('skyR', 0.8, 0.9);
	setProperty('skyR.flipX',true)
	addLuaSprite('skyR', false);
	
	makeAnimatedLuaSprite('sky', 'stages/FunInfiniteStage/sky', -800, -780);
	addAnimationByPrefix('sky', 'sky instance ','sky instance ', 24, true)
	setGraphicSize('sky', getProperty('sky.width') * 1.5)
	setScrollFactor ('sky', 0.8, 0.9);
	addLuaSprite('sky', false);
	--============================================================================
	--flipped skys
	makeAnimatedLuaSprite('skyflip', 'stages/FunInfiniteStage/sky', -800, -2420);
	addAnimationByPrefix('skyflip', 'sky instance ','sky instance ', 24, true)
	setGraphicSize('skyflip', getProperty('skyflip.width') * 1.5)
	setScrollFactor ('skyflip', 0.8, 0.9);
	setProperty('skyflip.flipY',true)
	addLuaSprite('skyflip', false);
	
	makeAnimatedLuaSprite('skyflipL', 'stages/FunInfiniteStage/sky', -3729, -2420);
	addAnimationByPrefix('skyflipL', 'sky instance ','sky instance ', 24, true)
	setGraphicSize('skyflipL', getProperty('skyflipL.width') * 1.5)
	setScrollFactor ('skyflipL', 0.8, 0.9);
	setProperty('skyflipL.flipY',true)
	addLuaSprite('skyflipL', false);
	
	makeAnimatedLuaSprite('skyflipR', 'stages/FunInfiniteStage/sky', 2130, -2420);
	addAnimationByPrefix('skyflipR', 'sky instance ','sky instance ', 24, true)
	setGraphicSize('skyflipR', getProperty('skyflipR.width') * 1.5)
	setScrollFactor ('skyflipR', 0.8, 0.9);
	setProperty('skyflipR.flipY',true)
	addLuaSprite('skyflipR', false);
	--==============================================================================
	--star ?
	makeAnimatedLuaSprite('starboi', 'stages/FunInfiniteStage/star', -800, -900);
	addAnimationByPrefix('starboi', 'star','star', 24, true)
	setGraphicSize('starboi', getProperty('starboi.width') * 3)
	setScrollFactor ('starboi', 0.8, 0.9);
	addLuaSprite('starboi', false);
	
	--===============================================================
	--back majins
	makeLuaSprite('mazinz-ext', 'stages/FunInfiniteStage/pillers-back', -736, -2110);
	setGraphicSize('mazinz-ext', getProperty('mazinz-ext.width') * 1.5)
	setProperty('mazinz-ext.flipY',true)
    addLuaSprite('mazinz-ext', false);
	
	makeAnimatedLuaSprite('mazinz', 'stages/FunInfiniteStage/trees_back', -1070, -500);
	addAnimationByPrefix('mazinz', 'trees mazin back instance E','trees mazin back instance ', 24, true)
	setGraphicSize('mazinz', getProperty('mazinz.width') * 1.5)
    addLuaSprite('mazinz', false);
	--=================================================================
	--back majins right
	makeLuaSprite('mazinzR', 'stages/FunInfiniteStage/pillers-back', -3630, -480);
	setGraphicSize('mazinzR', getProperty('mazinzR.width') * 1.5)
    addLuaSprite('mazinzR', false);
	
	makeLuaSprite('mazinzRY', 'stages/FunInfiniteStage/pillers-back', -3630, -2100);
	setGraphicSize('mazinzRY', getProperty('mazinzRY.width') * 1.5)
	setProperty('mazinzRY.flipY',true)
    addLuaSprite('mazinzRY', false);
	
	makeLuaSprite('mazinzL', 'stages/FunInfiniteStage/pillers-back', 2070, -480);
	setGraphicSize('mazinzL', getProperty('mazinzL.width') * 1.5)
    addLuaSprite('mazinzL', false);
	
	makeLuaSprite('mazinzLY', 'stages/FunInfiniteStage/pillers-back', 2070, -2100);
	setGraphicSize('mazinzLY', getProperty('mazinzLY.width') * 1.5)
	setProperty('mazinzLY.flipY',true)
    addLuaSprite('mazinzLY', false);
	
	--================================================================
	--bushes
	makeLuaSprite('bushL', 'stages/FunInfiniteStage/bushes', -3700, 150); --1400 & 200 is okay
	setGraphicSize('bushL', getProperty('bushL.width') * 1.5)
    addLuaSprite('bushL', false);
	
	makeLuaSprite('bushR', 'stages/FunInfiniteStage/bushes', 2100, 150);
	setGraphicSize('bushR', getProperty('bushR.width') * 1.5)
    addLuaSprite('bushR', false);
	
	makeLuaSprite('bush', 'stages/FunInfiniteStage/bushes', -800, 150);
	setGraphicSize('bush', getProperty('bush.width') * 1.5)
    addLuaSprite('bush', false);
	--===================================================================
	--floors + large Graphic
	makeLuaSprite('floor-ext', 'empty', -3682, 1300)
	makeGraphic('floor-ext', 8700, 1000, '000020')
	addLuaSprite('floor-ext', false)
	
	makeLuaSprite('floorL', 'stages/FunInfiniteStage/floor', -3682, 700);
	setGraphicSize('floorL', getProperty('floorL.width') * 1.5)
    addLuaSprite('floorL', false);
	
	makeLuaSprite('floorR', 'stages/FunInfiniteStage/floor', 2100, 700);
	setGraphicSize('floorR', getProperty('floorR.width') * 1.5)
    addLuaSprite('floorR', false);
	
	makeLuaSprite('floor', 'stages/FunInfiniteStage/floor', -790, 700);
	setGraphicSize('floor', getProperty('floor.width') * 1.5)
    addLuaSprite('floor', false);
	
	makeLuaSprite('floorFlip', 'stages/FunInfiniteStage/floor', -790, -2100);
	setGraphicSize('floorFlip', getProperty('floorFlip.width') * 1.5)
	setProperty('floorFlip.flipY',true)
    addLuaSprite('floorFlip', false);
	
	makeLuaSprite('floorFlipR', 'stages/FunInfiniteStage/floor', 2100, -2100);
	setGraphicSize('floorFlipR', getProperty('floorFlipR.width') * 1.5)
	setProperty('floorFlipR.flipY',true)
    addLuaSprite('floorFlipR', false);
	
	makeLuaSprite('floorFlipL', 'stages/FunInfiniteStage/floor', -3682, -2100);
	setGraphicSize('floorFlipL', getProperty('floorFlipL.width') * 1.5)
	setProperty('floorFlipL.flipY',true)
    addLuaSprite('floorFlipL', false);
	
	makeLuaSprite('floor-extFlip', 'empty', -3682, -3100)
	makeGraphic('floor-extFlip', 8700, 1000, '000020')
	addLuaSprite('floor-extFlip', false)
	
	--================================================================================
	--Left majins
	makeLuaSprite('tree-extL', 'stages/FunInfiniteStage/pillers-front', -3700, -360);
	setGraphicSize('tree-extL', getProperty('tree-extL.width') * 1.5)
    addLuaSprite('tree-extL', false);
	
	makeLuaSprite('tree-extLX', 'stages/FunInfiniteStage/pillers-front', -3700, -1980);
	setGraphicSize('tree-extLX', getProperty('tree-extLX.width') * 1.5)
	setProperty('tree-extLX.flipY',true)
    addLuaSprite('tree-extLX', false);
	--=================================================================================
	--Right majins
	makeLuaSprite('tree-extR', 'stages/FunInfiniteStage/pillers-front', 2200, -360);
	setGraphicSize('tree-extR', getProperty('tree-extR.width') * 1.5)
    addLuaSprite('tree-extR', false);
	
	makeLuaSprite('tree-extRX', 'stages/FunInfiniteStage/pillers-front', 2200, -1980);
	setGraphicSize('tree-extRX', getProperty('tree-extRX.width') * 1.5)
	setProperty('tree-extRX.flipY',true)
    addLuaSprite('tree-extRX', false);
	--=================================================================================
	--front majins
	makeLuaSprite('tree-ext', 'stages/FunInfiniteStage/pillers-front', -750, -2060);
	setGraphicSize('tree-ext', getProperty('tree-ext.width') * 1.5)
	setProperty('tree-ext.flipY',true)
    addLuaSprite('tree-ext', false);
	
	makeAnimatedLuaSprite('tree', 'stages/FunInfiniteStage/trees_front', -400, -450);
	addAnimationByPrefix('tree', 'trees mazins front instance ','trees mazins front instance ', 24, true)
	setGraphicSize('tree', getProperty('tree.width') * 1.5)
	addLuaSprite('tree', false);
	
	makeLuaSprite('BlueVG', 'stages/FunInfiniteStage/blueVg', 0, 0);
	setGraphicSize('BlueVG', 1280)
	setObjectCamera('BlueVG', 'other');
    addLuaSprite('BlueVG', true);
	setProperty('BlueVG.alpha',0.2);
end

function onCreatePost()
	local gAA = getPropertyFromClass("ClientPrefs", "globalAntialiasing")
	
    makeLuaSprite('theSky','stages/FunInfiniteStage/v2majin/sonicFUNsky',-580,-500)
	addLuaSprite('theSky',false) 
    setScrollFactor('theSky', 0.2, 0.2);
	setProperty('theSky.alpha',0)

    makeLuaSprite('theBush','stages/FunInfiniteStage/v2majin/Bush 1',-430,-50)
	addLuaSprite('theBush',false) 
    setScrollFactor('theBush', 1, 1);
	setProperty('theBush.alpha',0)

	makeAnimatedLuaSprite('theBack','stages/FunInfiniteStage/v2majin/Majin Boppers Back',-150,-340)
	addAnimationByPrefix('theBack','fire','MajinBop2 instance',24,true)
	addLuaSprite('theBack',false)
	setProperty('theBack.alpha',0)
	
	makeLuaSprite('theMountains','stages/FunInfiniteStage/v2majin/Bush2',-100,100)
	addLuaSprite('theMountains',false) 
    setScrollFactor('theMountains', 1, 1);
	setProperty('theMountains.alpha',0)

	makeAnimatedLuaSprite('theMajin','stages/FunInfiniteStage/v2majin/Majin Boppers Front',-440,-400)
	addAnimationByPrefix('theMajin','fire','MajinBop1 instance',24,true)
	addLuaSprite('theMajin',false)
	setProperty('theMajin.alpha',0)

	makeLuaSprite('theGround','stages/FunInfiniteStage/v2majin/FUN floor BG',-700,450)
	addLuaSprite('theGround',false) 
    setScrollFactor('theGround', 1.0, 1.0);
	setProperty('theGround.alpha',0)
	
	makeAnimatedLuaSprite('theRightMajin','stages/FunInfiniteStage/v2majin/majin FG2',-400,600)
	addAnimationByPrefix('theRightMajin','fire','majin front bopper',24,true)
	addLuaSprite('theRightMajin',true)
	setProperty('theRightMajin.alpha',0)

	makeAnimatedLuaSprite('theLeftMajin','stages/FunInfiniteStage/v2majin/majin FG1',1150,699)
	addAnimationByPrefix('theLeftMajin','fire','majin front bopper',24,true)
	addLuaSprite('theLeftMajin',true)
	setProperty('theLeftMajin.alpha',0)
	
	makeLuaSprite('overLy','stages/FunInfiniteStage/v2majin/overlay',-2180,-800)
	setScrollFactor('overLy', 1, 1);
	setGraphicSize('overLy', getProperty('overLy.width') * 2)
	addLuaSprite('overLy',true)
	setProperty('overLy.alpha',0)
    --===============================================================================
	makeLuaSprite('theSkyV1','stages/FunInfiniteStage/v1majin/sonicFUNsky',-600, -200)
	setGraphicSize('theSkyV1', getProperty('theSkyV1.width') * 0.9)
	setScrollFactor('theSkyV1', 0.3, 0.3);
	addLuaSprite('theSkyV1',false)
	setProperty('theSkyV1.alpha',0)
	
	makeLuaSprite('thefloorV1','stages/FunInfiniteStage/v1majin/sonicFUNfloor',-600, -500)
	setGraphicSize('thefloorV1', (getProperty('thefloorV1.width') * 0.9),(getProperty('thefloorV1.height') * 1.2))
	setScrollFactor('thefloorV1', 0.5, 0.5);
	addLuaSprite('thefloorV1',false)
	setProperty('thefloorV1.alpha',0)
	
	makeLuaSprite('theFog','stages/FunInfiniteStage/v1majin/sonicFUNfog',-600, -800)
	setGraphicSize('theFog', (getProperty('theFog.width') * 0.9),(getProperty('theFog.height') * 1.2))
	setScrollFactor('theFog', 0.5, 0.5);
	addLuaSprite('theFog',false)
	setProperty('theFog.alpha',0)
	
	makeLuaSprite('pill3V1','stages/FunInfiniteStage/v1majin/sonicFUNpillars3',-600, 0)
	setScrollFactor('pill3V1', 0.6, 0.7);
	setGraphicSize('pill3V1', getProperty('pill3V1.width') * 0.7)
	addLuaSprite('pill3V1',false)
	setProperty('pill3V1.alpha',0)
	
	makeLuaSprite('pill2V1','stages/FunInfiniteStage/v1majin/sonicFUNpillars2',-600, 0)
	setScrollFactor('pill2V1', 0.7, 0.7);
	setGraphicSize('pill2V1', getProperty('pill2V1.width') * 0.7)
	addLuaSprite('pill2V1',false)
	setProperty('pill2V1.alpha',0)
	
	makeAnimatedLuaSprite('FbgV1','stages/FunInfiniteStage/v1majin/FII_BG',-400, 0)
	addAnimationByPrefix('FbgV1','fire','sonicboppers',24,true)
	setGraphicSize('FbgV1', getProperty('FbgV1.width') * 0.7)
	setScrollFactor('FbgV1', 0.82, 0.82);
	addLuaSprite('FbgV1',false)
	setProperty('FbgV1.alpha',0)
end