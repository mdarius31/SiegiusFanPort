package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="CampaignOverlay")]
   public class CampaignOverlay extends MovieClip
   {
       
      
      public var txt_name:TextField;
      
      private var msg_img:String;
      
      public var mc_next:MovieClip;
      
      private var type_msg:String;
      
      public var txt_msg:TextField;
      
      public var txt_tutmsg:TextField;
      
      private var timer:uint;
      
      public var arrow1:MovieClip;
      
      public var arrow2:MovieClip;
      
      public var mc_face:MovieClip;
      
      public var phase:uint;
      
      private var msg_name:String;
      
      public var oldtimey:MovieClip;
      
      public var newPhase:Boolean;
      
      private var msg_msg:String;
      
      public var nextNewPhase:Boolean;
      
      public var frameCounter:uint;
      
      public var game:Game;
      
      public function CampaignOverlay(param1:Game)
      {
         if(true)
         {
            super();
            if(true)
            {
               addFrameScript(0,frame1,1,frame2,2,frame3,3,frame4);
               if(true)
               {
                  game = param1;
                  if(true)
                  {
                     phase = 0;
                  }
                  newPhase = true;
               }
               timer = 0;
            }
            frameCounter = 0;
         }
      }
      
      public function MouseEvents() : void
      {
         if(true)
         {
            §§push(this["mc_next"]);
            §§push(this["mc_next"]);
            if(true)
            {
               if(§§pop())
               {
                  §§pop();
                  if(true)
                  {
                     §§push(currentLabel == "say0");
                     §§push(currentLabel == "say0");
                     if(true)
                     {
                        if(!§§pop())
                        {
                           §§pop();
                           if(true)
                           {
                              §§goto(addr43);
                           }
                           §§goto(addr54);
                        }
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr70);
               }
               §§goto(addr43);
            }
            addr43:
            if((currentLabel == "say1" || currentLabel == "sayrag") && Boolean(this["mc_next"].hitTestPoint(mouseX,mouseY,false)))
            {
               addr70:
               setNewPhase();
               §§goto(addr72);
            }
            addr72:
            return;
         }
         §§goto(addr70);
      }
      
      public function setNewPhase() : void
      {
         type_msg = "";
         nextNewPhase = false;
         var _loc1_:*;
         var _loc2_:* = (_loc1_ = §§findproperty(phase)).phase + 1;
         _loc1_.phase = _loc2_;
         newPhase = true;
         gotoAndStop(1);
         game.cmpPause = false;
         txt_tutmsg.text = "";
         arrow1.x = -1000;
         arrow2.x = -1000;
      }
      
      public function earnGold(param1:int = -1, param2:Number = 1) : void
      {
         if(frameCounter % 30 == 0)
         {
            §§push(param1);
            §§push(0);
            if(true)
            {
               §§push(§§pop() == §§pop());
               if(!(§§pop() == §§pop()))
               {
                  §§pop();
                  §§push(param1);
                  §§push(-1);
                  if(true)
                  {
                     addr27:
                     if(§§pop() == §§pop())
                     {
                        §§push(game);
                        if(true)
                        {
                           §§push(§§pop().hud);
                           if(true)
                           {
                              §§push(game.hud.gold);
                              §§push(GameStats.getCampaignStats(SD.race,SD.picStage).gEarn0 * param2);
                              if(true)
                              {
                                 §§pop().gold = §§pop() + §§pop();
                                 addr59:
                                 §§push(game.hud);
                                 §§push(game.hud.goldEarned);
                                 §§push(GameStats.getCampaignStats(SD.race,SD.picStage).gEarn0 * param2);
                              }
                              §§pop().goldEarned = §§pop() + §§pop();
                              addr73:
                              if(param1 == 1 || param1 == -1)
                              {
                                 game.enemy.gold += GameStats.getCampaignStats(SD.race,SD.picStage).gEarn1 * param2;
                                 addr106:
                                 return;
                                 addr84:
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr59);
                        }
                        §§goto(addr84);
                     }
                  }
                  §§goto(addr73);
               }
               §§goto(addr27);
            }
            §§goto(addr81);
         }
         §§goto(addr106);
      }
      
      public function setDelay(param1:uint) : void
      {
         if(true)
         {
            if(!newPhase)
            {
               if(true)
               {
                  return;
               }
            }
            timer = param1 * 30;
         }
      }
      
      public function setTut(param1:int, param2:int, param3:String) : void
      {
         if(txt_tutmsg.text)
         {
            return;
         }
         txt_tutmsg.text = param3;
         if(param1 != -1)
         {
            arrow1.x = game.hud.buttons[param1].but.x - 5;
            arrow1.gotoAndPlay(1);
         }
         if(param2 != -1)
         {
            arrow2.x = game.hud.buttons[param2].but.x + 40;
            arrow2.gotoAndPlay(1);
         }
      }
      
      internal function frame3() : *
      {
         initMsg();
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame4() : *
      {
         if(true)
         {
            initMsg();
         }
      }
      
      internal function frame2() : *
      {
         initMsg();
      }
      
      public function initMsg() : void
      {
         mc_face.gotoAndStop(msg_img);
         txt_name.text = msg_name.toUpperCase();
         type_msg = UT.wordWrap(msg_msg,txt_msg);
         txt_msg.text = "";
      }
      
      public function setMsg(param1:String, param2:String, param3:String, param4:uint) : void
      {
         if(true)
         {
            §§push(newPhase);
            if(true)
            {
               if(!§§pop())
               {
                  if(true)
                  {
                     return;
                  }
               }
               else
               {
                  msg_img = param1;
                  if(true)
                  {
                     msg_name = param2;
                     if(true)
                     {
                        msg_msg = param3;
                        §§push(game);
                        if(true)
                        {
                           addr44:
                           if(§§pop().oldtimey)
                           {
                              addr45:
                              gotoAndStop("sayrag");
                           }
                           else
                           {
                              gotoAndStop("say" + param4);
                           }
                           game.cmpPause = true;
                           addr64:
                           §§push(game);
                        }
                        §§pop().hud.holdUnit = null;
                        §§goto(addr68);
                     }
                  }
                  §§goto(addr45);
               }
               §§goto(addr64);
            }
            §§goto(addr44);
         }
         addr68:
      }
      
      public function prepareNewPhase() : void
      {
         nextNewPhase = true;
      }
      
      public function EnterEvents() : void
      {
         var _loc1_:*;
         var _loc2_:* = (_loc1_ = §§findproperty(frameCounter)).frameCounter + 1;
         if(true)
         {
            _loc1_.frameCounter = _loc2_;
         }
         if(Boolean(this["mc_next"]) && Boolean(this["mc_next"].hitTestPoint(mouseX,mouseY,false)))
         {
            this["mc_next"].alpha = 1;
         }
         else if(this["mc_next"])
         {
            this["mc_next"].alpha = 0.8;
         }
         §§push(timer);
         if(true)
         {
            if(§§pop())
            {
               addr65:
               if(timer == 1)
               {
                  setNewPhase();
               }
               _loc2_ = (_loc1_ = §§findproperty(timer)).timer - 1;
               if(true)
               {
                  _loc1_.timer = _loc2_;
               }
            }
            if(nextNewPhase)
            {
               setNewPhase();
            }
            if(type_msg)
            {
               if(txt_msg.text.length != type_msg.length)
               {
                  txt_msg.text = type_msg.substring(0,txt_msg.text.length + 2);
               }
            }
            return;
         }
         §§goto(addr65);
      }
   }
}
