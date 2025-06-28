package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol120")]
   public class NoPlay extends MovieClip
   {
      
      public var but_max:MovieClip;
      
      private var main:Main;
      
      public function NoPlay(param1:Main, param2:Object)
      {
         if(true)
         {
            super();
            if(true)
            {
               main = param1;
               but_max.gotoAndStop(20);
            }
            new S_Lose().play(0,100);
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function EnterFrame() : void
      {
         if(but_max.hitTestPoint(mouseX,mouseY,true))
         {
            but_max.alpha += (1 - but_max.alpha) * 0.3;
         }
         else
         {
            but_max.alpha += (0 - but_max.alpha) * 0.3;
         }
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function MouseDown() : void
      {
         if(true)
         {
            if(but_max.hitTestPoint(mouseX,mouseY,true))
            {
               SD.urlAddGame();
            }
         }
      }
   }
}

