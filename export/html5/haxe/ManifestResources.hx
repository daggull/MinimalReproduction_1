package;

import haxe.io.Bytes;
import haxe.io.Path;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

			if(!StringTools.endsWith (rootPath, "/")) {

				rootPath += "/";

			}

		}

		if (rootPath == null) {

			#if (ios || tvos || webassembly)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif (console || sys)
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		
		#end

		var data, manifest, library, bundle;

		Assets.bundlePaths["library"] = rootPath + "lib/library.zip";
		

		library = Assets.getLibrary ("library");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("library");
		

	}


}

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_canvas_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_checkbox_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_checkboxcheck_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_dialog_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_flags_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_rightbutton_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_frame_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_splitter_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_glow_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_config_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_down_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_future_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_left_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_past_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_right_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_slide_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_icon_up_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_input_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_inverter_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_list_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_listcolumn_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_listemphasis_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_texts_loading_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_texts_online_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_ornament1_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_progress_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_progressbar_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_radio_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_radiocheck_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_graphics_scrollfield_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_graphics_shine_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_smoothsplitter_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_sphere_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_diamond_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_squarebutton_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_leftbutton_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_graphics_topbar_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_panel_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_viewsplitter_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_graphics_bottombar_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_box_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_workspace_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__file_home_dag_mycode_newminimalrepro_minimalreproduction_1_export_html5_haxe__generated_res_ui_button_hx extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__lib_library_zip extends null { }


#elseif (desktop || cpp)




#else



#end

#if (openfl && !flash)

#if html5

#else

#end

#end
#end

#end