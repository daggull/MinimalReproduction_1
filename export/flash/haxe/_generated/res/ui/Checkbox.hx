package res.ui; #if !flash


import swf.exporters.swflite.SWFLite;
import openfl.display.MovieClip;
import openfl.utils.Assets;

@:access(swf.exporters.swflite)

class Checkbox extends openfl.display.MovieClip {


	

	public function new () {

		var swfLite = SWFLite.instances.get ("library.swf");
		var symbol = swfLite.symbols.get (105);
		symbol.__init(swfLite);

		super();

	}


}


#else
@:bind @:native("res.ui.Checkbox") class Checkbox extends openfl.display.MovieClip {


	

	public function new () {

		super ();

	}


}
#end