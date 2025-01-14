// Script made by XTihX https://gamebanana.com/members/2066788, credit if used.

var characters = [ // The variable that stores the amount of characters that you want
    {
        charName: 'boy', // The name of your character that can be used in the event "Change Extra Character" when it is called and in lua functions like "setProperty('pico.scale.x', 400)" or "doTweenX('tag', 'pico', 300, 2.5, 'linear')" and on haxe using getVar(charName)
        characterName: 'bf', // The name of your .json character in the folder "characters"
        x: 200, // The X Pos of your character
        y: 400, // The Y Pos of your character
        group: 'boyfriendGroup', // The group of your character, can be 'boyfriendGroup', 'dadGroup' or 'gfGroup' (DONT LEAVE THIS VALUE IN BLANK)
        isPlayer: true, // Change to false if this character is on the opponent side.
        noteTypes: [ // The note types of your character, to add a new one make like the exemple down here.
            { name: 'char Sing', animSuffix: '' } // put the name of the notetype on the value "name". put "-alt" on the animSuffix value if you want your character making alt animations or any other suffix, leave it in blank to disable it.
        ]
    }, // To add a new character repeat code like the exemple down here (If you get any errors, make sure you put the commas correctly or you can contact me on gamebanana).
    {
        charName: 'gosonicexe',
        characterName: 'sonicexe',
        x: -250,
        y: 350,
        group: 'dadGroup',
        isPlayer: false,
        noteTypes: [ 
            { name: 'char Sing', animSuffix: '' }
        ]
    }
];

//-- DO NOT CHANGE ANYTHING DOWN HERE UNLESS YOU KNOW WHAT YOU ARE DOING!!! THIS SCRIPT WAS ONLY TESTED ON PSYCH 0.7.1h --\\

function onCreatePost() { 
    for (char in characters) { 
        setVar(char.charName, new Character(char.x, char.y, char.characterName, char.isPlayer));
        final curGroup = (char.group == 'boyfriendGroup' ? game.boyfriendGroup : (char.group == 'gfGroup' ? game.gfGroup : game.dadGroup));
        curGroup.add(getVar(char.charName));
    }
    game.callOnScripts('onCharacterCreated', []);
}

function charsDance(interval) { 
    for (char in characters) { 
        final curChar = getVar(char.charName);
        if (curChar == null) return;
        if (interval % (curChar.danceIdle ? Math.round(game.gfSpeed * curChar.danceEveryNumBeats) : curChar.danceEveryNumBeats) == 0 && curChar.animation.curAnim != null && !StringTools.startsWith(curChar.animation.curAnim.name, 'sing') && !curChar.stunned) 
            curChar.dance(); 
    }
}

function onCountdownTick(t, s) charsDance(s);
function onBeatHit() charsDance(game.curBeat);
function goodNoteHit(note) noteHit(note, false, true);
function opponentNoteHit(note) noteHit(note, false, false);
function noteMiss(note) noteHit(note, true, true);
function noteHit(n, isMiss, isPlayer) { 
    for (char in characters) { 
        if (char.isPlayer == isPlayer) { 
            for (note in char.noteTypes) { 
                if (n.noteType == note.name) { 
                    final curChar = getVar(char.charName);
                    final animToPlay = game.singAnimations[n.noteData] + (isMiss && curChar.hasMissAnimations ? 'miss' : '') + note.animSuffix;
                    curChar.playAnim(animToPlay, true);
                    if (!isMiss) curChar.holdTimer = 0;
                }
            }
        }
    }
}

var holdArray:Array<Bool> = [];
function onKeyPress(key) holdArray[key] = true;
function onKeyRelease(key) holdArray[key] = false;

function onUpdate(elapsed) { 
    if (game.startedCountdown && !game.inCutscene && !game.isDead) { 
        for (char in characters) {
            if (char.isPlayer) {
                final curChar = getVar(char.charName);
                if (curChar == null) return;
                if ((!game.cpuControlled ? !holdArray.contains(true) : true) && curChar.holdTimer > Conductor.stepCrochet * (0.0011 / FlxG.sound.music.pitch) * curChar.singDuration && StringTools.startsWith(curChar.animation.curAnim.name, 'sing') && !StringTools.endsWith(curChar.animation.curAnim.name, 'miss')) 
                    curChar.dance();
            }
        }
    }
}