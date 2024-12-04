package states;

import client.Paths;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Preloading extends FlxState
{
	override public function create()
	{
		super.create();

		var PreloadingText = new FlxText();
		PreloadingText.font = Paths.font("cloud.ttf");
		PreloadingText.size = 50;
		PreloadingText.text = "Loading...";
		PreloadingText.color = FlxColor.fromRGB(255, 255, 255);
		PreloadingText.screenCenter();
		add(PreloadingText);

		// FlxG.mouse.load(Paths.image("cursor.png")); // Loading cursor sprite.
		FlxG.mouse.useSystemCursor = true; // Replaced with the gigachad system cursor.

		// Adjust the offset to center the cursor
		FlxG.camera.fade(FlxColor.BLACK, 1, false, function()
		{
			FlxG.switchState(new states.MainMenu());
		});
	}
}