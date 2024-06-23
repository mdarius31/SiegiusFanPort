package Army_fla
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="Army_fla.Map_217")]
   public dynamic class Map_217 extends MovieClip
   {
       
      
      public var mp8:MovieClip;
      
      public var mp6:MovieClip;
      
      public var mp10:MovieClip;
      
      public var mp7:MovieClip;
      
      public var char:MovieClip;
      
      public var mp1:MovieClip;
      
      public var mp2:MovieClip;
      
      public var mp4:MovieClip;
      
      public var mp5:MovieClip;
      
      public var mp9:MovieClip;
      
      public var mp3:MovieClip;
      
      public function Map_217()
      {
         super();
         addFrameScript(0,frame1,1,frame2,2,frame3);
      }
      
      internal function frame3() : *
      {
         MapScreen(parent.parent).setMap();
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            MapScreen(parent.parent).setMap();
         }
      }
      
      internal function frame2() : *
      {
         if(true)
         {
            MapScreen(parent.parent).setMap();
         }
      }
   }
}
