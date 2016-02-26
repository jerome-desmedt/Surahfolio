/**
 * VERSION: 1.0
 * DATE: 15/09/2015
 * ActionScript 3
 * AUTHOR: J. De Smedt
 **/
package utils
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	import settings.Config;

	public class XMLLoader extends Sprite
	{
		private var URL:URLLoader
		
		/** No Constructor Function to avoid uncontrolled initialization	**/
		/** link the path to the XML file + listener onComplete event		**/
		public function loadXML($path:String):void
		{
			(URL=new URLLoader()).load(new URLRequest($path));
			URL.addEventListener(Event.COMPLETE, onLoadXMLCompleteHandler, false, 0, true);
		}
		
		/** onLoadXMLCompleteHandler
		 * Dispatching the function to the caller once the XML is loaded **/
		private function onLoadXMLCompleteHandler(event:Event):void
		{
			setXML(new XML(event.target.data));
			
			/*URL.removeEventListener(ProgressEvent.PROGRESS, onSiteLoadProgressHandler);
			URL.removeEventListener(IOErrorEvent.IO_ERROR, onSiteLoadErrorHandler);
			URL.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, onSiteLoadErrorHandler);*/
			URL.removeEventListener(Event.COMPLETE, onLoadXMLCompleteHandler);
			
			dispatchEvent(new Event("LOAD_COMPLETE"));	
		}
		
		/** Getters & Setters **/
		/** Explicit instead of implicit function: XML name is ambiguous to the compiler**/
		private function setXML($value:XML):void
		{
			Config.DATA_XML = $value;
		}
		public function getXML():XML
		{
			return Config.DATA_XML;
		}
	}
}
