package source.objects;

import flixel.sound.FlxSound;
import flixel.util.FlxTimer;

class SoundFade extends FlxSound
{
	public var startVal = 0.1;

	public function new(startingValue:Float = 0)
	{
		if (startingValue == null)
		{
			startingValue = 0.1;
		}

		super();

		startVal = startingValue;

		volume = startVal;

		startFade();
	}

	function startFade()
	{
		new FlxTimer().start(0.05, function(timer)
		{
			if (volume >= 1)
			{
				trace("Fade in complete!");
				return;
			}
			volume += 0.05;
			startFade();
		});
	}
}