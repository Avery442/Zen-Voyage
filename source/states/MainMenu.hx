package states;

import client.Paths;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.util.FlxColor;

class MainMenu extends FlxState
{
	override public function create()
	{
		var bg = new FlxSprite();
		bg.makeGraphic(FlxG.width, FlxG.height, FlxColor.fromRGB(0, 112, 255));
		add(bg);

		super.create();
	}

	override public function update(elapsed)
	{
		super.update(elapsed);
	}
}