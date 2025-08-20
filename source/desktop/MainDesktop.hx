package desktop;

import flixel.text.FlxText;

class MainDesktop extends FlxState
{
	public var dancosVersionString(get, never):String;

	function get_dancosVersionString():String
		return 'DanCOS ${Std.string(DesktopSpecifications.Version)} (build ${DesktopSpecifications.Build})';

	public var versionText = new FlxText();

	override public function new()
	{
		super();

		var backdrop = new FlxSprite().loadGraphic(Assets.getImagePath('backdrops/${Main.SETTINGS.backdrop.filename}'));
		if (Main.SETTINGS.backdrop.scale_to_fit)
		{
			backdrop.scale.set((FlxG.width / backdrop.width), (FlxG.height / backdrop.height));

			trace('Backdrop Scale: ${backdrop.scale}');
		}
		backdrop.screenCenter();
		add(backdrop);

		versionText.text = dancosVersionString;
		versionText.size = 16;
		versionText.setPosition(FlxG.width - versionText.width, FlxG.height - versionText.height);
		add(versionText);
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
