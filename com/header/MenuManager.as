/**
 * VERSION: 1.0
 * DATE: 15/09/2015
 * ActionScript 3
 * AUTHOR: J. De Smedt
 **/
package com.header
{
	import flash.display.Sprite;
	
	public class MenuManager extends Sprite
	{
		public function setButtons():void
		{
			addChildAt(new Button, 0);
		}
		
		public function unsetButton():void
		{
			
		}
	}
}
