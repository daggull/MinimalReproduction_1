package res.ui;

@:access(swf.exporters.animate)

class Button extends #if flash flash.display.MovieClip.MovieClip2 #else openfl.display.MovieClip #end
{
	

	public function new()
	{
		var library = swf.exporters.animate.AnimateLibrary.get("GLXG1WSWEMic3Xbhj5Jz");
		var symbol = library.symbols.get(113);
		symbol.__init(library);

		super();
	}
}