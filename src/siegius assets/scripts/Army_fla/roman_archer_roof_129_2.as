package Army_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol836")]
   public dynamic class roman_archer_roof_129 extends MovieClip
   {
      
      public function roman_archer_roof_129()
      {
         if(true)
         {
            super();
            addFrameScript(0,frame1,1,frame2,11,frame12);
         }
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
         if(true)
         {
            stop();
         }
      }
      
      internal function frame2() : *
      {
         gotoAndPlay(currentFrame + uint(Math.random() * 7));
      }
   }
}

if(true)
{
   this.roman_archer_roof_129 = §§newclass(roman_archer_roof_129,MovieClip);
}

