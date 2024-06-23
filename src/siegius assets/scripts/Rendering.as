package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="Rendering")]
   public class Rendering extends MovieClip
   {
       
      
      public var bar:MovieClip;
      
      public var txt_render:TextField;
      
      private var barWidth:Number;
      
      private var main:Main;
      
      public function Rendering(param1:Main, param2:Object)
      {
         if(true)
         {
            super();
            if(true)
            {
               main = param1;
               if(true)
               {
                  main.bitHandler = new BH(main);
               }
               barWidth = bar.width;
            }
            bar.width = 0;
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function EnterFrame() : void
      {
         if(true)
         {
            §§push(main.bitHandler);
            if(true)
            {
               if(!§§pop().complete)
               {
                  if(true)
                  {
                     addr21:
                     main.bitHandler.setup();
                     if(true)
                     {
                        bar.width = main.bitHandler.currentFrame / main.bitHandler.totalFrames * 255;
                     }
                     txt_render.text = main.bitHandler.currentLabel;
                  }
               }
               else
               {
                  main.renderDone();
               }
               §§goto(addr57);
            }
            §§goto(addr21);
         }
         addr57:
      }
      
      public function MouseDown() : void
      {
      }
   }
}
