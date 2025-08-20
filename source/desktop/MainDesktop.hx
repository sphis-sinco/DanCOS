package desktop;

import flixel.FlxState;

class MainDesktop extends FlxState
{
	override public function new()
	{
		super();

		trace('DanCOS ${DesktopSpecifications.Version} (build ${DesktopSpecifications.Build})');
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
