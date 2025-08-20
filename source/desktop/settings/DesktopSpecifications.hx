package desktop.settings;

class DesktopSpecifications
{
	public static var Build(get, never):Int;

	static function get_Build():Int
		return Main.BUILD;

	public static var Version(get, never):Float;

	static function get_Version():Float
		return 1.0;
}
