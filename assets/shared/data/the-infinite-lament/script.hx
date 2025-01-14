var curSection = 0;
var stepDev = 0;
var stepTime = 0;
var illegal_instruction = null;

function create()
{
	PlayState.camZooming = true;
	PlayState.camModulo = 99999999999999999999;
}

function beatHit(beat:Int)
{
	if ((beat >= 316 && beat < 380))
	{
		if (beat % 2 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.1", "0.03");
			PlayState.camHUD.angle -= 10;
			PlayState.camGame.angle -= 5;
			PlayState.camHUD.y += 10;
			PlayState.pausables.push(FlxTween.tween(PlayState.camHUD, {angle: 0, y: 0}, 0.3, {ease: FlxEase.quadOut}));
			PlayState.pausables.push(FlxTween.tween(PlayState.camGame, {angle: 0}, 0.3, {ease: FlxEase.quadOut}));
		}
		else if (beat % 2 == 1)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.25", "0.06");
			PlayState.camHUD.angle += 10;
			PlayState.camGame.angle += 5;
			PlayState.camHUD.y -= 10;
			PlayState.pausables.push(FlxTween.tween(PlayState.camHUD, {angle: 0, y: 0}, 0.3, {ease: FlxEase.quadOut}));
			PlayState.pausables.push(FlxTween.tween(PlayState.camGame, {angle: 0}, 0.3, {ease: FlxEase.quadOut}));
		}
	}

	if (PlayState.idledBoyfriend != null && beat % PlayState.boyfriend.danceEveryNumBeats == 0)
		PlayState.idledBoyfriend.dance();

	if (PlayState.idledDadMajin != null && beat % PlayState.dad.danceEveryNumBeats == 0)
		PlayState.idledDadMajin.dance();

	if (PlayState.altmajinOpponent != null && PlayState.altmajinOpponent.alpha != 0 && beat % PlayState.altmajinOpponent.danceEveryNumBeats == 0)
		PlayState.altmajinOpponent.dance();

	if (PlayState.bAltmajinOpponent != null && PlayState.bAltmajinOpponent.alpha != 0 && beat % PlayState.bAltmajinOpponent.danceEveryNumBeats == 0)
		PlayState.bAltmajinOpponent.dance();

	for (tailsManjin in PlayState.tailsmajinOpponentGrp)
	{
		if (tailsManjin != null && tailsManjin.alpha != 0 && beat % tailsManjin.danceEveryNumBeats == 0)
			tailsManjin.dance();			
	}
}

function stepHit(step:Int)
{
	if (step % 16 == 0)
	{
		curSection = Math.floor(step / 16);
	}

	stepDev = Math.floor(step % 16) + 1;

	if (curSection >= 1 && curSection <= 23)
	{
		if (step % 16 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.08", "0.06");
		}
	}

	if (curSection >= 26 && curSection <= 33)
	{
		if (step % 8 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.06", "0.04");
		}
	}

	if (curSection >= 26 && curSection <= 33)
	{
		if (step % 8 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.06", "0.04");
		}
	}

	if (curSection >= 34 && curSection <= 41)
	{
		if (step % 4 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.06", "0.04");
		}
	}

	if (curSection >= 43 && curSection <= 49)
	{
		if (step % 8 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.06", "0.04");
		}
	}

	if (curSection >= 51 && curSection <= 57)
	{
		if (step % 4 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.06", "0.04");
		}
	}

	if (curSection >= 69 && curSection <= 75)
	{
		if (step % 8 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.06", "0.04");
		}
	}

	if (curSection >= 98 && curSection <= 111)
	{
		if (step % 16 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.08", "0.06");
		}
	}

	if (curSection >= 114 && curSection <= 128)
	{
		if (step % 4 == 0)
		{
			PlayState.triggerEventNote("Add Camera Zoom", "0.06", "0.04");
		}
	}

	switch (step)
	{
		case 384:
			PlayState.camGame.setFilters([PlayState.pixelShaderFilter]);
			PlayState.camHUD.setFilters([PlayState.pixelShaderFilter]);
			
			PlayState.pausables.push(FlxTween.tween(PlayState, {defaultCamZoom: 2.5}, 1.8, {
				ease: FlxEase.quadIn
			}));

			PlayState.pausables.push(FlxTween.num(1, 0.01, 2, {
				onUpdate: function(numTween) // Esto se deberia colocar como numTween:NumTween, pero aqui te deja colocar asi nomas
				{
					PlayState.pixelShader.setFloat("Pixelly", numTween.value);
				},
				onComplete: function(_) {
					PlayState.pausables.push(FlxTween.num(0.01, 1, 2, {
						onUpdate: function(value) 
						{
							PlayState.pixelShader.setFloat("Pixelly", value.value);
						},
						onComplete: function(_) 
						{
							PlayState.camGame.filtersEnabled = false;
							PlayState.camHUD.filtersEnabled = false;
						}
					}));	
				}
			}));
		case 405:
			PlayState.camGame.zoom = 0.45;
			PlayState.defaultCamZoom = 0.45;

			// Lo movi aca porque en la transición, como no hay pantalla negra
			// se ve por unos momentillos el majin -EstoyAburridow
			PlayState.triggerEventNote("Change Character", "dad", "majin");
			
			PlayState.cameraSpeed = 1.5;

			PlayState.boyfriend.setPosition(890, 280);
			PlayState.gf.setPosition(60, -450);
			PlayState.dad.setPosition(-40, 140);

			PlayState.boyfriendCameraOffset = [-90, -100];
			PlayState.opponentCameraOffset = [80, -130];

			PlayState.camFollow.set(374.5, 306);
			PlayState.camFollowPos.setPosition(374.5, 306);

			PlayState.boyfriend.alpha = 1;
			PlayState.gf.alpha = 1;

			PlayState.bg.alpha = 1;
			PlayState.majinTV1.alpha = 1;
			PlayState.bg1.alpha = 1;
			PlayState.majinTV2.alpha = 1;
			PlayState.majinTV3.alpha = 1;
			PlayState.bg2.alpha = 1;

			PlayState.bgIntro.alpha = 0.00001;
			PlayState.consola.alpha = 0.00001;
		case 416:
			PlayState.cameraSpeed = 0.7;
		case 471:
			PlayState.blackF_ck.cameras = [PlayState.camHUD];
			PlayState.blackF_ck.alpha = 1;
			PlayState.majinTails.alpha = 1;
			PlayState.majinTails.animation.play('TAILS 1');
		case 800:
			PlayState.altmajinOpponent.playAnim("intro", true);
			PlayState.altmajinOpponent.specialAnim = true;
			PlayState.altmajinOpponent.alpha = 1;
		case 804:
			PlayState.bAltmajinOpponent.playAnim("intro", true);
			PlayState.bAltmajinOpponent.specialAnim = true;
			PlayState.bAltmajinOpponent.alpha = 1;
 		case 480:
			PlayState.majinTails.alpha = 0.00001;
			PlayState.blackF_ck.alpha = 0.00001;
		case 535:
			PlayState.blackF_ck.alpha = 1;
			PlayState.majinTails.alpha = 1;
			PlayState.majinTails.scale.set(0.5, 0.5);
			PlayState.majinTails.animation.play('TAILS 2');
		case 544:
			PlayState.majinTails.kill();
			PlayState.remove(PlayState.majinTails);
			PlayState.majinTails.destroy();

			PlayState.majinTails.alpha = 0.00001;
			PlayState.blackF_ck.alpha = 0.00001;
		case 1527:
			PlayState.camGame.zoom = 0.45;
			PlayState.defaultCamZoom = 0.45;

			PlayState.idledBoyfriend = PlayState.boyfriend;
			PlayState.idledBoyfriend.idleSuffix = "-crouched";

			PlayState.picoPlayer.alpha = 1;
			PlayState.boyfriend = PlayState.picoPlayer;
			PlayState.iconP1.changeIcon(PlayState.boyfriend.healthIcon);
		case 976:
			PlayState.addCinematicBars(1);
			PlayState.pausables.push(FlxTween.tween(FlxG.camera, {zoom: 0.6}, 1, {
				ease: FlxEase.quadIn,
				onComplete: function(tween:FlxTween)
				{
					PlayState.defaultCamZoom = 0.6;
				}
			}));
		case 1232:
			PlayState.removeCinematicBars(1);
			PlayState.pausables.push(FlxTween.tween(FlxG.camera, {zoom: 0.45}, 1, {
				ease: FlxEase.quadIn,
				onComplete: function(tween:FlxTween)
				{
					PlayState.defaultCamZoom = 0.45;
				}
			}));
		case 1264: // 1 Tails Majin
			PlayState.tailsmajinOpponentGrp[0].alpha = 1;
			PlayState.tailsmajinOpponentGrp[0].playAnim("spawn", true);
			PlayState.tailsmajinOpponentGrp[0].specialAnim = true;
		case 1384: // 3 Tails Majin
			PlayState.tailsmajinOpponentGrp[4].alpha = 1;
			PlayState.tailsmajinOpponentGrp[4].playAnim("spawn", true);
			PlayState.tailsmajinOpponentGrp[4].specialAnim = true;

			PlayState.tailsmajinOpponentGrp[3].alpha = 1;
			PlayState.tailsmajinOpponentGrp[3].playAnim("spawn", true);
			PlayState.tailsmajinOpponentGrp[3].specialAnim = true;

			PlayState.tailsmajinOpponentGrp[0].playAnim("glitch", true);
			PlayState.tailsmajinOpponentGrp[0].specialAnim = true;
		case 1512: // 5 Tails Majin
			PlayState.tailsmajinOpponentGrp[4].playAnim("glitch", true);
			PlayState.tailsmajinOpponentGrp[4].specialAnim = true;

			PlayState.tailsmajinOpponentGrp[3].playAnim("glitch", true);
			PlayState.tailsmajinOpponentGrp[3].specialAnim = true;

			PlayState.tailsmajinOpponentGrp[2].alpha = 1;
			PlayState.tailsmajinOpponentGrp[2].playAnim("spawn", true);
			PlayState.tailsmajinOpponentGrp[2].specialAnim = true;

			PlayState.tailsmajinOpponentGrp[1].alpha = 1;
			PlayState.tailsmajinOpponentGrp[1].playAnim("spawn", true);
			PlayState.tailsmajinOpponentGrp[1].specialAnim = true;

			PlayState.tailsmajinOpponentGrp[0].playAnim("glitch", true);
			PlayState.tailsmajinOpponentGrp[0].specialAnim = true;

			PlayState.camGame.zoom = 1;
			PlayState.defaultCamZoom = 1;
		case 1528: // Primer disparo - Se muere el Majin de la izquierda
			PlayState.addCinematicBars(1);
			PlayState.pausables.push(FlxTween.tween(FlxG.camera, {zoom: 0.7}, 1, {
				ease: FlxEase.quadIn,
				onComplete: function(tween:FlxTween)
				{
					PlayState.defaultCamZoom = 0.7;
				}
			}));

			PlayState.altmajinOpponent.playAnim("death", true);
			PlayState.altmajinOpponent.specialAnim = true;
			PlayState.altmajinOpponent.animation.finishCallback = 
				function(name:String) 
				{
					if (name == "death")
					{
						PlayState.altmajinOpponent.kill();
						PlayState.remove(PlayState.altmajinOpponent);
						PlayState.altmajinOpponent.destroy();
					}
				}
		case 1568:
			PlayState.removeCinematicBars(1);
			PlayState.pausables.push(FlxTween.tween(FlxG.camera, {zoom: 0.45}, 1, {
				ease: FlxEase.quadIn,
				onComplete: function(tween:FlxTween)
				{
					PlayState.defaultCamZoom = 0.45;
				}
			}));
		case 1629: // Segundo disparo - Se muere un Tails de fondo
			PlayState.tailsmajinOpponentGrp[2].playAnim("kill");
			PlayState.tailsmajinOpponentGrp[2].specialAnim = true;
			PlayState.tailsmajinOpponentGrp[2].animation.finishCallback =
			function(name:String) 
			{
				PlayState.tailsmajinOpponentGrp[2].kill();
				PlayState.remove(PlayState.tailsmajinOpponentGrp[2]);
				PlayState.tailsmajinOpponentGrp[2].destroy();
				
				PlayState.tailsmajinOpponentGrp[2] = null;
			}
		case 1696: // Tercer disparo - Se muere el majin de la derecha
			PlayState.bAltmajinOpponent.playAnim("death", true);
			PlayState.bAltmajinOpponent.specialAnim = true;
			PlayState.bAltmajinOpponent.animation.finishCallback = 
			function(name:String) 
			{
				if (name == "death")
				{
					PlayState.bAltmajinOpponent.kill();
					PlayState.remove(PlayState.bAltmajinOpponent);
					PlayState.bAltmajinOpponent.destroy();
				}
			}
		/*
		Estos se hacen con eventos 
		case 1760: // Cuarto disparo - primer majin con spin que muere
		Quinto disparo - segundo majin con spin que muere solo que no le medi el tiempo ya que se hace con eventos */
		case 1824: // Este en realidad no era un disparo
			PlayState.idledDadMajin = PlayState.dad;

			PlayState.dad = PlayState.tailsmajinOpponentGrp[0];
			PlayState.iconP2.changeIcon(PlayState.dad.healthIcon);
		case 1888: // Sexto disparo - Se muere otro Tails de fondo
			PlayState.tailsmajinOpponentGrp[1].playAnim("kill");
			PlayState.tailsmajinOpponentGrp[1].specialAnim = true;
			PlayState.tailsmajinOpponentGrp[1].animation.finishCallback =
			function(name:String) 
			{
				PlayState.tailsmajinOpponentGrp[1].kill();
				PlayState.remove(PlayState.tailsmajinOpponentGrp[1]);
				PlayState.tailsmajinOpponentGrp[1].destroy();
				
				PlayState.tailsmajinOpponentGrp[1] = null;
			}
		case 1952: // Septimo disparo - Muere el tails principal
			PlayState.dad = PlayState.dadMap.get("majin");
			PlayState.iconP2.changeIcon(PlayState.dad.healthIcon);
			
			for (tailsMajin in PlayState.tailsmajinOpponentGrp)
			{
				if (tailsMajin == null)
					continue;

				tailsMajin.playAnim("kill", true);
				tailsMajin.specialAnim = true;
				tailsMajin.animation.finishCallback = 
				function(name:String)
				{
					if (name == "kill")
					{
						tailsMajin.kill();
						PlayState.remove(tailsMajin);
						tailsMajin.destroy();
					}
				}
			}

			PlayState.tailsmajinOpponentGrp = [];

			// Nota: No intentar matar al idledDadMajin
			// Por alguna razon se hace null y hace que de error por "Null Object Reference"
		case 1953:
			PlayState.addCinematicBars(1);
			PlayState.pausables.push(FlxTween.tween(FlxG.camera, {zoom: 0.6}, 1, {
				ease: FlxEase.quadIn,
				onComplete: function(tween:FlxTween)
				{
					PlayState.defaultCamZoom = 0.6;
				}
			}));
		/* Estos los hice con eventos - Se mueren los majins que aparecen con el spin
		case 2000: // Octavo disparo
		case 2027: // Noveno disparo
		case 2029: // Decimo disparo */
		case 2075:
			PlayState.removeCinematicBars(1);

			PlayState.camGame.filtersEnabled = true;
			PlayState.camHUD.filtersEnabled = true;

			PlayState.pausables.push(FlxTween.num(1, 0.01, 2, {
				onUpdate: function(numTween)
				{
					PlayState.pixelShader.setFloat("Pixelly", numTween.value);
				},
				onComplete: function(_) {
					PlayState.defaultCamZoom = 2.5;
					PlayState.camGame.zoom = 2.5;
					PlayState.pausables.push(FlxTween.tween(PlayState, {defaultCamZoom: 1}, 1.8, {
						ease: FlxEase.quadOut
					}));

					PlayState.pausables.push(FlxTween.num(0.01, 1, 2, {
						onUpdate: function(value) 
						{
							PlayState.pixelShader.setFloat("Pixelly", value.value);
						},
						onComplete: function(_) 
						{
							PlayState.camGame.filtersEnabled = false;
							PlayState.camHUD.filtersEnabled = false;
						}
					}));	
				}
			}));
		case 2081: // Onceavo disparo
			PlayState.dad.playAnim("kill", true);
			PlayState.dad.specialAnim = true;
		case 2083: // ZA WARUDO
			PlayState.gf.animation.pause();
			PlayState.dad.animation.pause();
			PlayState.majinTV2.animation.pause();
			PlayState.majinTV3.animation.pause();
			PlayState.boyfriend.animation.pause();
			PlayState.idledBoyfriend.animation.pause();

			PlayState.camHUD.alpha = 0.00001;

			PlayState.isCameraOnForcedPos = true;
			PlayState.camFollow.set(PlayState.camFollowPos.x, PlayState.camFollowPos.y);

			illegal_instruction = new FlxText(0, 0, 0, "ILLEGAL INSTRUCTION?0000" + PlayState.dad.ID);
			illegal_instruction.setFormat(Paths.font("sonic-cd-menu-font.otf"), 35, 0xFFFFFFFF);
			illegal_instruction.italic = true;
			illegal_instruction.cameras = [PlayState.camOther];
			illegal_instruction.screenCenter();
			illegal_instruction.x += 100;
			illegal_instruction.y += 40;
			PlayState.add(illegal_instruction);

			PlayState.fake_glitch.alpha = 1;
		case 2096: // Ya no onceavo disparo
			PlayState.triggerEventNote("Change Character", "dad", "majin-tv");

			PlayState.boyfriend.setPosition(-360, -730);
			PlayState.gf.setPosition(-620, -580);
			PlayState.dad.setPosition(-580, -560);

			PlayState.boyfriend.alpha = 0.00001;
			PlayState.gf.alpha = 0.00001;

			PlayState.dad.playAnim("final", true);
			PlayState.dad.specialAnim = true;

			PlayState.camFollow.set(-278, -333.5);
			PlayState.camFollowPos.setPosition(-278, -333.5);

			PlayState.bg.alpha = 0.00001;
			PlayState.majinTV1.alpha = 0.00001;
			PlayState.bg1.alpha = 0.00001;
			PlayState.majinTV2.alpha = 0.00001;
			PlayState.majinTV3.alpha = 0.00001;
			PlayState.bg2.alpha = 0.00001;
			illegal_instruction.alpha = 0.00001;
			PlayState.fake_glitch.alpha = 0.00001;

			PlayState.bgIntro.alpha = 1;
			PlayState.consola.alpha = 1;
	}
	// Despues de ver todo eso, en especial lo de los Tails, ahora si quiero hacer funciones, me esta a empezando a dar algo ver tanto codigo repetido ._:xD -EstoyAburridow
}