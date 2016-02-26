/**
 * VERSION: 1.0
 * DATE: 15/09/2015
 * ActionScript 3
 * AUTHOR: J. De Smedt
 **/
package com
{
	import com.header.MenuManager;
	import flash.display.Sprite;
		
	public class Header extends Sprite
	{
		private var _menu:	MenuManager;
		
		public function Header():void
		{
			initHeader();
		}
		private function initHeader():void
		{	
			addChild(_menu=new MenuManager);
			_menu.setButtons();
		}
	}
}
