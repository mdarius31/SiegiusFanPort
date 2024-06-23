package
{
   import Playtomic.*;
   import flash.display.MovieClip;
   import flash.events.ContextMenuEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   
   public class Main extends MovieClip
   {
      
      public static var UNLOCK:Boolean;
      
      public static var STAGE:*;
      
      public static var WIDTH:uint;
      
      public static var HEIGHT:uint;
      
      public static var SITELOCK:Boolean;
      
      public static var SKIPS:Boolean;
      
      public static var BOARCAMP:Boolean;
       
      
      public var curClass:*;
      
      public var bitHandler:BH;
      
      public var fps:Debug;
      
      public function Main()
      {
         if(true)
         {
            super();
            if(true)
            {
               addFrameScript(0,frame1,1,frame2,2,frame3,100,frame101,101,frame102);
            }
            addEventListener(Event.ADDED_TO_STAGE,Init,false,0,true);
         }
      }
      
      private function MouseUp(param1:MouseEvent) : void
      {
         if(true)
         {
            curClass.MouseUp();
         }
      }
      
      public function setFps(param1:uint, param2:String) : void
      {
         fps["debug" + param1].text = "" + param2;
      }
      
      public function startClass(param1:*, param2:Object = null) : void
      {
         if(curClass)
         {
            removeChild(curClass);
            curClass = null;
         }
         curClass = new param1(this,!!param2 ? param2 : {});
         addChild(curClass);
         stage.focus = stage;
         if(fps)
         {
            setChildIndex(fps,numChildren - 1);
         }
      }
      
      public function renderDone() : void
      {
         if(true)
         {
            Log.Play();
            startClass(Intro_Sponsor);
         }
      }
      
      private function Init(param1:Event) : void
      {
         var e:Event;
         var my_sponsor:*;
         var my_sleva:*;
         var my_juice:*;
         var fmy_sleva:Function;
         var fmy_juice:Function;
         var my_copyright:*;
         var fmy_sponsor:Function;
         var my_menu:ContextMenu = null;
         §§push(§§newactivation());
         §§push(undefined);
         if(true)
         {
            §§pop().§§slot[3] = §§pop();
            §§push(§§newactivation());
            §§push(undefined);
            if(true)
            {
               §§pop().§§slot[4] = §§pop();
               §§push(§§newactivation());
               §§push(undefined);
            }
            §§pop().§§slot[5] = §§pop();
            §§push(§§newactivation());
            §§push(undefined);
         }
         §§pop().§§slot[6] = §§pop();
         fmy_sponsor = null;
         fmy_juice = null;
         fmy_sleva = null;
         e = param1;
         fmy_sponsor = function(param1:ContextMenuEvent):void
         {
            SD.urlSponsor();
         };
         fmy_juice = function(param1:ContextMenuEvent):void
         {
            SD.urlJuice();
         };
         fmy_sleva = function(param1:ContextMenuEvent):void
         {
            SD.urlSleva();
         };
         Main.STAGE = stage;
         Main.WIDTH = 700;
         Main.HEIGHT = 400;
         my_menu = new ContextMenu();
         my_menu.hideBuiltInItems();
         my_sponsor = new ContextMenuItem("MaxGames.com");
         my_juice = new ContextMenuItem("Juice-Tin");
         my_sleva = new ContextMenuItem("Mike Sleva");
         my_copyright = new ContextMenuItem("Copyright - 2011");
         my_copyright.enabled = false;
         my_copyright.separatorBefore = true;
         my_juice.separatorBefore = true;
         my_sponsor.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,fmy_sponsor);
         my_juice.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,fmy_juice);
         my_sleva.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,fmy_sleva);
         my_menu.customItems.push(my_sponsor,my_juice,my_sleva,my_copyright);
         contextMenu = my_menu;
         stage.addEventListener(Event.ENTER_FRAME,EnterFrame,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,MouseDown,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,MouseUp,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,KeyDown,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,KeyUp,false,0,true);
         Main.BOARCAMP = checkUrl(["maxgames.com","www.maxgames.com","farm.maxgames.com"]);
         startClass(LoadScreen);
         Log.View(2361,"ed8f58d493fa4021",loaderInfo.loaderURL);
      }
      
      public function checkUrl(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:uint = 0;
         if(true)
         {
            _loc2_ = loaderInfo.url;
            if(true)
            {
               _loc3_ = false;
            }
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            while(§§pop() < param1.length)
            {
               if(param1[_loc4_] == _loc2_.substring(_loc2_.indexOf("/",6) + 1,_loc2_.indexOf("/",7)))
               {
                  if(false)
                  {
                     break;
                  }
                  _loc3_ = true;
                  if(false)
                  {
                     continue loop0;
                  }
               }
               §§push(_loc4_);
               if(true)
               {
                  _loc4_ = §§pop() + 1;
                  continue loop0;
               }
            }
            return _loc3_;
         }
      }
      
      internal function frame3() : *
      {
         stop();
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame102() : *
      {
         prevFrame();
      }
      
      internal function frame2() : *
      {
         stop();
      }
      
      private function KeyDown(param1:KeyboardEvent) : void
      {
         curClass.KeyDown(param1);
      }
      
      private function EnterFrame(param1:Event) : void
      {
         curClass.EnterFrame();
         if(!(curClass is LoadScreen) && !(curClass is NoPlay))
         {
            SH.EnterFrame();
         }
      }
      
      public function loadDone() : void
      {
         gotoAndStop("start");
         addChild(new BgSky());
         §§push(Main.SITELOCK);
         if(true)
         {
            §§push(§§pop());
            if(true)
            {
               addr40:
               if(§§pop() && checkUrl(["maxgames.com","www.maxgames.com","farm.maxgames.com"]))
               {
                  startClass(NoPlay);
                  return;
               }
               startClass(Rendering);
               SH.Init();
               SD.Init();
               UnitStats.Init();
               SoundStats.Init();
               return;
            }
            §§push(!§§pop());
         }
         §§goto(addr40);
      }
      
      private function KeyUp(param1:KeyboardEvent) : void
      {
         if(true)
         {
            curClass.KeyUp(param1);
         }
      }
      
      internal function frame101() : *
      {
         if(true)
         {
            stop();
         }
      }
      
      public function onConnectError(param1:String) : void
      {
      }
      
      private function MouseDown(param1:MouseEvent) : void
      {
         curClass.MouseDown();
      }
   }
}
