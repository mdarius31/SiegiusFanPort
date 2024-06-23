package Army_fla
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="Army_fla.MenuFlag_192")]
   public dynamic class MenuFlag_192 extends MovieClip
   {
       
      
      public var bt_delete2:TextField;
      
      public var bt_sound:TextField;
      
      public var bt_galNext:TextField;
      
      public var bt_music:TextField;
      
      public var bt_more:TextField;
      
      public var bt_save1:MovieClip;
      
      public var bt_save0:MovieClip;
      
      public var bt_galPrev:TextField;
      
      public var bt_add:TextField;
      
      public var bt_start:TextField;
      
      public var bt_flag:TextField;
      
      public var flagDrop:MovieClip;
      
      public var bt_save2:MovieClip;
      
      public var maskDrop:MovieClip;
      
      public var bt_walk:TextField;
      
      public var mc_gallery:MovieClip;
      
      public var bt_credits:TextField;
      
      public var bt_options:TextField;
      
      public var bt_credNext:TextField;
      
      public var bt_gallery:TextField;
      
      public var bt_credPrev:TextField;
      
      public var mc_credits:MovieClip;
      
      public var bt_delete1:TextField;
      
      public var bt_delete0:TextField;
      
      public function MenuFlag_192()
      {
         if(true)
         {
            super();
            addFrameScript(0,frame1,1,frame2,4,frame5,11,frame12,17,frame18,24,frame25,29,frame30,35,frame36);
         }
      }
      
      internal function frame25() : *
      {
         if(true)
         {
            MenuFlag(parent).buttons = new Array();
            if(true)
            {
               MenuFlag(parent).buttons.push("galPrev");
            }
            MenuFlag(parent).buttons.push("galNext");
         }
      }
      
      internal function frame2() : *
      {
         if(true)
         {
            prevFrame();
         }
      }
      
      internal function frame18() : *
      {
         MenuFlag(parent).buttons = new Array();
         MenuFlag(parent).buttons.push("sound");
         MenuFlag(parent).buttons.push("music");
         MenuFlag(parent).buttons.push("flag");
         MenuFlag(parent).setOptions();
      }
      
      internal function frame12() : *
      {
         MenuFlag(parent).buttons = new Array();
         MenuFlag(parent).buttons.push("save0");
         MenuFlag(parent).buttons.push("save1");
         MenuFlag(parent).buttons.push("save2");
         MenuFlag(parent).buttons.push("delete0");
         MenuFlag(parent).buttons.push("delete1");
         MenuFlag(parent).buttons.push("delete2");
         MenuFlag(parent).setSaveButtonStates();
      }
      
      internal function frame1() : *
      {
         stop();
         maskDrop.gotoAndStop(1);
         flagDrop.gotoAndStop(1);
      }
      
      internal function frame36() : *
      {
         MenuFlag(parent).buttons = new Array();
      }
      
      internal function frame30() : *
      {
         if(true)
         {
            MenuFlag(parent).buttons = new Array();
            if(true)
            {
               MenuFlag(parent).buttons.push("credPrev");
            }
            MenuFlag(parent).buttons.push("credNext");
         }
      }
      
      internal function frame5() : *
      {
         MenuFlag(parent).buttons = new Array();
         MenuFlag(parent).buttons.push("start");
         MenuFlag(parent).buttons.push("options");
         MenuFlag(parent).buttons.push("gallery");
         MenuFlag(parent).buttons.push("credits");
         MenuFlag(parent).buttons.push("walk");
         MenuFlag(parent).buttons.push("more");
         MenuFlag(parent).buttons.push("add");
      }
   }
}
