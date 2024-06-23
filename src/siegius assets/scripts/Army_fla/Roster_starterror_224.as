package Army_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="Army_fla.Roster_starterror_224")]
   public dynamic class Roster_starterror_224 extends MovieClip
   {
       
      
      public var txt_okay:TextField;
      
      public function Roster_starterror_224()
      {
         if(true)
         {
            super();
            addFrameScript(0,frame1,1,frame2);
         }
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
