/**
 * VERSION: 1.0
 * DATE: 15/09/2015
 * ActionScript 3
 * AUTHOR: J. De Smedt
 **/
package com.header
{
	import flash.events.MouseEvent;
	
	public class Button extends MenuManager
	{
		private var _btn			:HeadButton;
		
		public function Button():void
		{
			_btn=new HeadButton();
			
			//_btn.btn_txt.label.text=
			
			_btn.addEventListener(MouseEvent.MOUSE_OVER, OnMouseOverHandler, false, 0, true);
			_btn.addEventListener(MouseEvent.MOUSE_OUT, OnMouseOutHandler, false, 0, true);
			_btn.addEventListener(MouseEvent.CLICK, OnClickHandler, false, 0, true);
			
			addChild(_btn);
		}
		private function OnMouseOverHandler(event:MouseEvent):void
		{
			trace("Button Class: MouseOver on "+event.target);
		}
		private function OnMouseOutHandler(event:MouseEvent):void
		{
			trace("Button Class: MouseOut of "+event.target);
		}
		private function OnClickHandler(event:MouseEvent):void
		{
			trace("Button Class: MouseClick on "+event.target);
		}
	}
}