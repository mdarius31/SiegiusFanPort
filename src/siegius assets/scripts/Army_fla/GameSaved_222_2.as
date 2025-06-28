package Army_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1273")]
   public dynamic class GameSaved_222 extends MovieClip
   {
      
      public function GameSaved_222()
      {
         super();
         addFrameScript(0,frame1,1,frame2);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         if(true)
         {
            prevFrame();
         }
      }
   }
}

