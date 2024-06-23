package Army_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="Army_fla.bridge_ground_99")]
   public dynamic class bridge_ground_99 extends MovieClip
   {
       
      
      public function bridge_ground_99()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      internal function frame1() : *
      {
         stop();
      }
   }
}
