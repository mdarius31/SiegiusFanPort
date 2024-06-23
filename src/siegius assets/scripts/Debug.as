
{
   if(true)
   {
      Debug = §§newclass(Debug,MovieClip);
   }
}

package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   [Embed(source="/_assets/assets.swf", symbol="Debug")]
   public dynamic class Debug extends MovieClip
   {
       
      
      public var prevSecondTime:Number;
      
      public var debug1:TextField;
      
      public var debug2:TextField;
      
      public var debug4:TextField;
      
      public var debug3:TextField;
      
      public var secondTime:Number;
      
      public var debug5:TextField;
      
      public var tf:TextField;
      
      public var frames:Number;
      
      public var time:Number;
      
      public var frameTime:Number;
      
      public var fps:String;
      
      public var prevFrameTime:Number;
      
      public var iBar:MovieClip;
      
      public function Debug()
      {
         super();
         addFrameScript(0,frame1,1,frame2);
      }
      
      internal function frame1() : *
      {
         prevFrameTime = getTimer();
         prevSecondTime = getTimer();
         frames = 0;
         fps = "...";
      }
      
      internal function frame2() : *
      {
         if(true)
         {
            stop();
            this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         time = getTimer();
         frameTime = time - prevFrameTime;
         §§push(§§findproperty(secondTime));
         §§push(time);
         if(true)
         {
            §§push(§§pop() - prevSecondTime);
         }
         §§pop().secondTime = §§pop();
         if(secondTime >= 1000)
         {
            fps = frames.toString();
            frames = 0;
            prevSecondTime = time;
         }
         else
         {
            ++frames;
         }
         prevFrameTime = time;
         tf.text = fps + " FPS / " + frameTime + " MS";
         iBar.scaleX -= (iBar.scaleX - frameTime / 10) / 5;
      }
   }
}
