package res.texts;

@:access(swf.exporters.animate)

class Online extends #if flash flash.display.MovieClip.MovieClip2 #else openfl.display.MovieClip #end
{
	

	public function new()
	{
		var library = swf.exporters.animate.AnimateLibrary.get("GLXG1WSWEMic3Xbhj5Jz");
		var symbol = library.symbols.get(45);
		symbol.__init(library);

		super();
	}
}