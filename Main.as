/**
 * VERSION: 1.0
 * DATE: 15/09/2015
 * ActionScript 3
 * AUTHOR: J. De Smedt
 **/
package
{
	import com.Header;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	import settings.Config;
	
	import utils.XMLLoader;
	
	/** Defining the SWF parameters **/
	[SWF(backgroundColor="0x675E6C", frameRate="40", width="1280", height="120")]
	public class Main extends Sprite
	{	
		private var XML:XMLLoader;
		
		public function Main():void
		{
			initStage();
		}
		
		private function initStage():void
		{
			stage.align=StageAlign.TOP_LEFT;
			stage.scaleMode=StageScaleMode.NO_SCALE;
			
			/** Setting & calling the XMLLoader Class & listener **/
			(XML=new XMLLoader()).loadXML(Config.XML_FILE);
			XML.addEventListener("LOAD_COMPLETE", onDataLoadComplete);
		}
		
		/** Actions to execute once the XML has been loaded **/
		/** This function is being dispatched from XMLLoader **/
		private function onDataLoadComplete(event:Event):void
		{
			trace("onDataLoadComplete");
			
			addChild(new Header());
		}
	}
}