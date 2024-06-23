
{
   if(true)
   {
      this.gaul_archer_roof_131 = §§newclass(gaul_archer_roof_131,MovieClip);
   }
}

package Army_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="Army_fla.gaul_archer_roof_131")]
   public dynamic class gaul_archer_roof_131 extends MovieClip
   {
       
      
      public function gaul_archer_roof_131()
      {
         super();
         addFrameScript(0,frame1,1,frame2,11,frame12);
      }
      
      internal function frame12() : *
      {
         if(true)
         {
            gotoAndPlay(currentFrame + uint(Math.random() * 8));
         }
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         gotoAndPlay(currentFrame + uint(Math.random() * 7));
      }
   }
}
