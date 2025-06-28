package Army_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1010")]
   public dynamic class Hud_popup_148 extends MovieClip
   {
      
      public var cost1:TextField;
      
      public var cost2:TextField;
      
      public var cost3:TextField;
      
      public var but1:MovieClip;
      
      public var but2:MovieClip;
      
      public var but3:MovieClip;
      
      public function Hud_popup_148()
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

