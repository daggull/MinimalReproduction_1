package res.icon; #if !flash


import swf.exporters.swflite.SWFLite;
import openfl.display.MovieClip;
import openfl.utils.Assets;

@:access(swf.exporters.swflite)

class Down extends openfl.display.MovieClip {


	

	public function new () {

		var swfLite = SWFLite.instances.get ("library.swf");
		var symbol = swfLite.symbols.get (75);
		symbol.__init(swfLite);

		super();

	}


}


#else
@:bind @:native("res.icon.Down") class Down extends openfl.display.MovieClip {


	

	public function new () {

		super ();

	}


}
#end