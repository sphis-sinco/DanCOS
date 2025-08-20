package desktop;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class MainDesktop extends FlxState
{
	public var dancosVersionString(get, never):String;

	function get_dancosVersionString():String
		return 'DanCOS ${Std.string(DesktopSpecifications.Version)} (build ${DesktopSpecifications.Build})';

	override public function new()
	{
		super();

		var backdrop = new FlxSprite().loadGraphic(Assets.getImagePath('backdrops/${Main.SETTINGS.backdrop}'));
		backdrop.scale.set((backdrop.width / FlxG.width), (backdrop.width / FlxG.height));
		backdrop.screenCenter();
		add(backdrop);

		trace(dancosVersionString);
	}

	override public function create()
	{
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
