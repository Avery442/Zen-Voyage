package;

import flixel.FlxGame;
import openfl.display.Sprite;
import states.Preloading;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, Preloading, 60, 60, true, false)); // Nah research says it can be overwhelming to be using fullscreen and frustrating.
	}
}
