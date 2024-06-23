
{
   if(true)
   {
      this.Hud_Description_153 = §§newclass(Hud_Description_153,MovieClip);
   }
}

package Army_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="Army_fla.Hud_Description_153")]
   public dynamic class Hud_Description_153 extends MovieClip
   {
       
      
      public var txt_desc:TextField;
      
      public var txt_name:TextField;
      
      public function Hud_Description_153()
      {
         super();
         addFrameScript(0,frame1);
      }
      
      internal function frame1() : *
      {
         visible = false;
      }
   }
}
