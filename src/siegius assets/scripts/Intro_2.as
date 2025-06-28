package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1092")]
   public class Intro extends MovieClip
   {
      
      public var but_juice:MovieClip;
      
      public var but_sleva:MovieClip;
      
      public var main:Main;
      
      public function Intro(param1:Main, param2:Object)
      {
         super();
         addFrameScript(0,frame1,186,frame187,190,frame191);
         main = param1;
         gotoAndPlay(2);
         but_juice.buttonMode = true;
         but_sleva.buttonMode = true;
      }
      
      public function MouseUp() : void
      {
      }
      
      public function startMusic() : void
      {
         SH.setMusic(S_Menu);
      }
      
      internal function frame187() : *
      {
         startMusic();
      }
      
      public function gotoMenu() : void
      {
         if(true)
         {
            main.startClass(Menu);
            stop();
         }
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            stop();
         }
      }
      
      internal function frame191() : *
      {
         gotoMenu();
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function EnterFrame() : void
      {
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function MouseDown() : void
      {
         if(true)
         {
            if(but_juice.hitTestPoint(mouseX,mouseY,false))
            {
               if(true)
               {
                  SD.urlJuice();
               }
               addr34:
               SD.urlSleva();
            }
            if(but_sleva.hitTestPoint(mouseX,mouseY,false))
            {
               §§goto(addr34);
            }
         }
      }
   }
}

if(true)
{
   Intro = §§newclass(Intro,MovieClip);
}

