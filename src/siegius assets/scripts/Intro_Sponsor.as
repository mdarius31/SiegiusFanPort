
{
   if(true)
   {
      Intro_Sponsor = §§newclass(Intro_Sponsor,MovieClip);
   }
}

package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="Intro_Sponsor")]
   public class Intro_Sponsor extends MovieClip
   {
       
      
      public var but_max:MovieClip;
      
      public var main:Main;
      
      public function Intro_Sponsor(param1:Main, param2:Object)
      {
         if(true)
         {
            super();
            if(true)
            {
               addFrameScript(190,frame191);
               if(true)
               {
                  main = param1;
               }
               gotoAndPlay(2);
            }
            but_max.buttonMode = true;
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function gotoMenu() : void
      {
         main.startClass(Intro);
         stop();
      }
      
      internal function frame191() : *
      {
         if(true)
         {
            gotoMenu();
         }
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
            if(but_max.hitTestPoint(mouseX,mouseY,false))
            {
               SD.urlSponsor();
            }
         }
      }
   }
}
