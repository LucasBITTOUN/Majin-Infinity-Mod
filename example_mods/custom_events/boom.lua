function onCreate()

makeLuaSprite('videoSprite','',0,0)

addLuaSprite('videoSprite')

addHaxeLibrary('MP4Handler','vlc')

addHaxeLibrary('Event','openfl.events')

runHaxeCode([[

var filepath = Paths.video('explosion');

//get the video path


var video = new MP4Handler();

//create the video object

video.playVideo(filepath);

//play the video file

video.visible = false;

//make the video object overlay invisible

setVar('video',video);

//set global variable

FlxG.stage.removeEventListener('enterFrame', video.update);

//removes the native update event the video has (disables skipping pressing enter)

]])

end

function onUpdatePost()

runHaxeCode([[

var video = getVar('video');

//get video object variable

game.getLuaObject('videoSprite').loadGraphic(video.bitmapData);

//set video sprite's graphic as the video's bitmap data

video.volume = FlxG.sound.volume + 0;

//set video volume as the game's volume (plus 0.4 idk psych has that for some reason)


if(game.paused)video.pause();

//pause video if the game is paused

]])

end

function onResume()

runHaxeCode([[

var video = getVar('video');

//get video object variable

video.resume();

//resume video when game is resumed

]])

end