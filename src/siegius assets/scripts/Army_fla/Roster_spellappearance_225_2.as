package Army_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1355")]
   public dynamic class Roster_spellappearance_225 extends MovieClip
   {
      
      public var MC:MovieClip;
      
      public var explo1:MovieClip;
      
      public var explo2:MovieClip;
      
      public function Roster_spellappearance_225()
      {
         super();
         addFrameScript(0,frame1,2,frame3);
      }
      
      internal function frame3() : *
      {
         if(true)
         {
            explo1.gotoAndStop(5);
            explo2.gotoAndStop(3);
         }
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            stop();
         }
      }
   }
}

