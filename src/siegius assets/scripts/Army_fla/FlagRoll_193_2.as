package Army_fla
{
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol160")]
   public dynamic class FlagRoll_193 extends MovieClip
   {
      
      public function FlagRoll_193()
      {
         if(true)
         {
            super();
            addFrameScript(0,frame1,1,frame2,22,frame23,23,frame24,28,frame29);
         }
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            stop();
         }
      }
      
      internal function frame23() : *
      {
         if(true)
         {
            MovieClip(parent.parent).rolling = false;
            stop();
         }
      }
      
      internal function frame24() : *
      {
         MovieClip(parent.parent).rolling = true;
      }
      
      internal function frame29() : *
      {
         MovieClip(parent).gotoAndStop(MovieClip(parent.parent).curFrame);
         gotoAndPlay(2);
      }
      
      internal function frame2() : *
      {
         MovieClip(parent.parent).rolling = true;
      }
   }
}

