package
{
   import flash.display.MovieClip;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol849")]
   public dynamic class Base extends MovieClip
   {
      
      public var arch3:MovieClip;
      
      public var arch5:MovieClip;
      
      public var arch1:MovieClip;
      
      public var arch2:MovieClip;
      
      public var arch4:MovieClip;
      
      public function Base()
      {
         super();
         addFrameScript(0,frame1,2,frame3,4,frame5);
      }
      
      internal function frame3() : *
      {
         if(true)
         {
            arch1.visible = true;
            if(true)
            {
               arch2.visible = false;
               if(true)
               {
                  arch3.visible = false;
               }
               arch4.visible = false;
            }
            arch5.visible = false;
         }
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            arch1.visible = true;
            if(true)
            {
               arch2.visible = false;
               if(true)
               {
                  arch3.visible = false;
               }
               arch4.visible = false;
            }
            arch5.visible = false;
         }
      }
      
      internal function frame5() : *
      {
         if(true)
         {
            arch1.visible = true;
            if(true)
            {
               arch2.visible = false;
               if(true)
               {
                  arch3.visible = false;
                  if(true)
                  {
                     arch4.visible = false;
                     if(true)
                     {
                        arch5.visible = false;
                        arch1.alpha = 0;
                     }
                     arch2.alpha = 0;
                  }
                  arch3.alpha = 0;
               }
               arch4.alpha = 0;
            }
            arch5.alpha = 0;
         }
      }
   }
}

