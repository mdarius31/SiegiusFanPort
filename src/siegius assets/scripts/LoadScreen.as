
{
   if(true)
   {
      LoadScreen = §§newclass(LoadScreen,MovieClip);
   }
}

package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="LoadScreen")]
   public class LoadScreen extends MovieClip
   {
       
      
      public var bar:MovieClip;
      
      public var but_max:MovieClip;
      
      private var otxtHeight:Number;
      
      private var main:Main;
      
      public var txt_play:TextField;
      
      public var but_guide:MovieClip;
      
      public var but_strat:MovieClip;
      
      private var obarWidth:Number;
      
      public function LoadScreen(param1:Main, param2:Object)
      {
         if(true)
         {
            super();
            if(true)
            {
               main = param1;
               if(true)
               {
                  obarWidth = bar.width;
                  if(true)
                  {
                     bar.width = 0;
                  }
                  otxtHeight = txt_play.y;
               }
               txt_play.y = 2000;
            }
            but_max.gotoAndStop(20);
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function EnterFrame() : void
      {
         if(true)
         {
            if(main.loaderInfo.bytesLoaded >= main.loaderInfo.bytesTotal)
            {
               if(true)
               {
                  txt_play.y = otxtHeight;
                  if(true)
                  {
                     addr25:
                     if(txt_play.hitTestPoint(mouseX,mouseY,false))
                     {
                        if(true)
                        {
                           txt_play.textColor = 16763904;
                           if(true)
                           {
                              addr44:
                              if(but_max.hitTestPoint(mouseX,mouseY,false))
                              {
                                 if(true)
                                 {
                                    but_max.alpha += (0 - but_max.alpha) * 0.3;
                                    if(true)
                                    {
                                       addr77:
                                       if(!but_strat.hitTestPoint(mouseX,mouseY,false))
                                       {
                                          but_strat.alpha += (0 - but_strat.alpha) * 0.3;
                                          addr113:
                                          if(but_guide.hitTestPoint(mouseX,mouseY,false))
                                          {
                                             addr119:
                                             but_guide.alpha += (1 - but_guide.alpha) * 0.3;
                                             addr142:
                                             bar.width = main.loaderInfo.bytesLoaded / main.loaderInfo.bytesTotal * obarWidth;
                                             gotoAndStop(Math.ceil(main.loaderInfo.bytesLoaded / main.loaderInfo.bytesTotal * 300));
                                             return;
                                             addr130:
                                             addr153:
                                          }
                                          else
                                          {
                                             but_guide.alpha += (0 - but_guide.alpha) * 0.3;
                                             §§goto(addr142);
                                          }
                                          §§goto(addr142);
                                       }
                                       §§goto(addr113);
                                    }
                                    but_strat.alpha += (1 - but_strat.alpha) * 0.3;
                                 }
                                 §§goto(addr113);
                              }
                              else
                              {
                                 but_max.alpha += (1 - but_max.alpha) * 0.3;
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr130);
                     }
                     else
                     {
                        txt_play.textColor = 13409596;
                        if(true)
                        {
                           §§goto(addr44);
                        }
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr119);
               }
               §§goto(addr153);
            }
            §§goto(addr25);
         }
         §§goto(addr119);
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function MouseDown() : void
      {
         if(txt_play.hitTestPoint(mouseX,mouseY,false))
         {
            main.loadDone();
         }
         if(but_max.hitTestPoint(mouseX,mouseY,false))
         {
            SD.urlSponsor();
         }
         if(but_strat.hitTestPoint(mouseX,mouseY,false))
         {
            SD.urlStrategy();
         }
         if(but_guide.hitTestPoint(mouseX,mouseY,false))
         {
            SD.urlWalkthrough();
         }
      }
   }
}
