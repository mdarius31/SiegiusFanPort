package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1274")]
   public class MapScreen extends MovieClip
   {
      
      public var txt_desc:TextField;
      
      public var cloud3:MovieClip;
      
      private var nextClip:*;
      
      public var mapholder:MovieClip;
      
      public var mc_diff:MovieClip;
      
      private var walkTo:uint;
      
      private var walkAt:uint;
      
      private var maxStage:uint;
      
      public var mc_stage:MovieClip;
      
      private var map:MovieClip;
      
      public var bt_select:TextField;
      
      private var walking:Boolean;
      
      public var cloud2:MovieClip;
      
      public var cloud4:MovieClip;
      
      public var txt_stagename:TextField;
      
      private var mapMoveY:Number;
      
      public var cloud0:MovieClip;
      
      private var selMp:uint;
      
      public var main:Main;
      
      private var buttons:Array;
      
      public var bt_back:TextField;
      
      public var cloud1:MovieClip;
      
      public var txt_title:TextField;
      
      public var mc_saved:MovieClip;
      
      private var clouds:Array;
      
      private var mapMoveX:Number;
      
      public function MapScreen(param1:Main, param2:Object)
      {
         var _loc3_:uint = 0;
         if(true)
         {
            super();
            if(true)
            {
               main = param1;
               if(true)
               {
                  if(SD.showSaved)
                  {
                     if(true)
                     {
                        trace("PLA IT");
                        if(true)
                        {
                           SD.showSaved = false;
                           if(true)
                           {
                              mc_saved.gotoAndPlay("show");
                              if(true)
                              {
                              }
                              addr69:
                              y = -500;
                           }
                           addr72:
                           buttons = new Array("bt_back","bt_select");
                        }
                        clouds = new Array();
                     }
                     §§goto(addr85);
                  }
                  §§push(§§findproperty(maxStage));
                  if(true)
                  {
                     addr55:
                     if(SD.race == "boar")
                     {
                        §§push(5);
                     }
                     §§pop().maxStage = §§pop();
                     if(true)
                     {
                        §§push(!param2);
                        §§push(!param2);
                        if(true)
                        {
                           if(!§§pop())
                           {
                              §§pop();
                           }
                           addr68:
                           if(§§pop())
                           {
                              §§goto(addr69);
                           }
                           §§goto(addr72);
                        }
                        addr85:
                        §§goto(addr90);
                     }
                     §§goto(addr68);
                     §§push(!param2.midStart);
                  }
                  §§goto(addr55);
                  §§push(10);
               }
               addr90:
               if(param2)
               {
                  _loc3_ = 0;
                  while(_loc3_ < 5)
                  {
                     this["cloud" + _loc3_].x = param2.useClouds[_loc3_].MC.x;
                     clouds.push({
                        "MC":this["cloud" + _loc3_],
                        "spd":param2.useClouds[_loc3_].spd
                     });
                     _loc3_++;
                  }
               }
               map = mapholder.map;
               map.gotoAndStop(SD.race);
               return;
               §§push(!param2.useClouds);
            }
            _loc3_ = 0;
         }
         while(_loc3_ < 5)
         {
            this["cloud" + _loc3_].x = -500 + Math.random() * (1000 + 700);
            clouds.push({
               "MC":this["cloud" + _loc3_],
               "spd":Math.random() * 1.5 + 0.3
            });
            _loc3_++;
         }
         §§goto(addr85);
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      private function setPoint(param1:uint, param2:Boolean = false) : void
      {
         var _loc3_:Object = null;
         if(selMp)
         {
            map["mp" + selMp].gotoAndStop(1);
         }
         selMp = param1;
         map["mp" + selMp].gotoAndStop(3);
         mapMoveX = -map["mp" + selMp].x;
         mapMoveY = -map["mp" + selMp].y;
         if(param2)
         {
            walkAt = selMp;
            walkTo = selMp;
            map.x = mapMoveX;
            map.y = mapMoveY;
            map.char.x = map["mp" + selMp].x;
            map.char.y = map["mp" + selMp].y;
         }
         _loc3_ = GameStats.getCampaignStats(SD.race,selMp);
         if(true)
         {
            mc_stage.gotoAndStop(_loc3_.stage);
            if(true)
            {
               mc_diff.gotoAndStop(_loc3_.diff);
               if(true)
               {
                  txt_title.text = _loc3_.title;
                  txt_stagename.text = GameStats.getMapStats(_loc3_.stage).name;
               }
               txt_desc.text = _loc3_.desc;
            }
            SD.picStage = selMp;
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:* = undefined;
         var _loc3_:MovieClip = null;
         var _loc4_:Number = NaN;
         if(true)
         {
            if(nextClip)
            {
               if(true)
               {
                  y += (-800 - y) * 0.08;
                  if(true)
                  {
                     if(y < -490)
                     {
                        if(true)
                        {
                           main.startClass(nextClip,{"midStart":true});
                           if(true)
                           {
                           }
                           addr88:
                           if(SD.picStage < maxStage)
                           {
                           }
                        }
                        ++SD.picStage;
                     }
                     addr62:
                     §§push(y > -100);
                     §§push(y > -100);
                     if(true)
                     {
                        if(§§pop())
                        {
                           §§pop();
                           addr81:
                           if(true)
                           {
                              §§push(SD.picStage);
                           }
                           if(SD.hadVictory)
                           {
                           }
                        }
                        §§push(§§pop());
                     }
                     if(§§pop())
                     {
                        §§pop();
                     }
                     §§goto(addr81);
                  }
                  setPoint(SD.picStage,false);
               }
               _loc1_ = 0;
            }
            else
            {
               y += (0 - y) * 0.08;
               if(true)
               {
                  §§goto(addr62);
               }
            }
            SD.hadVictory = false;
            §§goto(addr88);
         }
         while(_loc1_ < buttons.length)
         {
            _loc2_ = this[buttons[_loc1_]];
            if(_loc2_.hitTestPoint(mouseX,mouseY,false))
            {
               _loc2_.alpha = 1;
            }
            else
            {
               _loc2_.alpha = 0.8;
            }
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            clouds[_loc1_].MC.x -= clouds[_loc1_].spd;
            if(clouds[_loc1_].MC.x < -500)
            {
               clouds[_loc1_].MC.x = 700 + 500;
            }
            _loc1_++;
         }
         map.x += (mapMoveX - map.x) * 0.1;
         map.y += (mapMoveY - map.y) * 0.1;
         _loc1_ = 1;
         while(_loc1_ <= maxStage)
         {
            _loc3_ = map["mp" + _loc1_];
            if(true)
            {
               if(_loc3_.currentFrame > 2)
               {
                  if(true)
                  {
                  }
               }
               else if(_loc3_.hitTestPoint(mouseX,mouseY,true))
               {
                  if(true)
                  {
                     _loc3_.gotoAndStop(2);
                  }
               }
               else
               {
                  _loc3_.gotoAndStop(1);
               }
               _loc1_++;
            }
         }
         if(walkAt != selMp)
         {
            walking = true;
            map.char.play();
            if(walkAt < selMp)
            {
               walkTo = walkAt + 1;
            }
            if(walkAt > selMp)
            {
               walkTo = walkAt - 1;
            }
            _loc4_ = UT.getRotation(map.char.x,map.char.y,map["mp" + walkTo].x,map["mp" + walkTo].y);
            map.char.x += UT.xMoveToRot(_loc4_,3);
            map.char.y += UT.yMoveToRot(_loc4_,3);
            map.char.scaleX = UT.xMoveToRot(_loc4_,3) >= 0 ? 1 : -1;
            if(UT.getDist(map.char.x,map.char.y,map["mp" + walkTo].x,map["mp" + walkTo].y) < 3)
            {
               walkAt = walkTo;
               map.char.x = map["mp" + walkAt].x;
               map.char.y = map["mp" + walkAt].y;
               walking = false;
               map.char.stop();
            }
         }
         else if(walking)
         {
            _loc4_ = UT.getRotation(map.char.x,map.char.y,map["mp" + walkAt].x,map["mp" + walkAt].y);
            map.char.x += UT.xMoveToRot(_loc4_,3);
            map.char.y += UT.yMoveToRot(_loc4_,3);
            map.char.scaleX = UT.xMoveToRot(_loc4_,3) >= 0 ? 1 : -1;
            if(UT.getDist(map.char.x,map.char.y,map["mp" + walkAt].x,map["mp" + walkAt].y) < 3)
            {
               map.char.x = map["mp" + walkAt].x;
               map.char.y = map["mp" + walkAt].y;
               walking = false;
               map.char.stop();
            }
         }
      }
      
      public function setMap() : void
      {
         var _loc1_:uint = 0;
         if(SD.picStage)
         {
            setPoint(SD.picStage,true);
         }
         else
         {
            setPoint(1,true);
         }
         map.char.stop();
         _loc1_ = uint(SD.curStage + 1);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            §§push(maxStage);
            if(false)
            {
               break;
            }
            if(§§pop() > §§pop())
            {
               _loc1_ = 1;
               while(true)
               {
                  §§push(_loc1_);
                  §§push(maxStage);
                  break loop0;
                  map["mp" + _loc1_].txt_num.text = _loc1_ + "";
                  _loc1_++;
               }
               §§goto(addr88);
            }
            map["mp" + _loc1_].gotoAndStop(4);
            _loc1_++;
         }
         while(true)
         {
            if(§§pop() > §§pop())
            {
               addr88:
               return;
            }
            map["mp" + _loc1_].txt_num.text = _loc1_ + "";
            _loc1_++;
            continue;
         }
      }
      
      public function MouseDown() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = undefined;
         var _loc3_:MovieClip = null;
         if(true)
         {
            _loc1_ = 0;
         }
         while(_loc1_ < buttons.length)
         {
            _loc2_ = this[buttons[_loc1_]];
            if(_loc2_.hitTestPoint(mouseX,mouseY,false))
            {
               var _loc4_:* = buttons[_loc1_];
               if("bt_back" === _loc4_)
               {
                  §§push(0);
                  if(true)
                  {
                  }
               }
               else
               {
                  §§push("bt_select" === _loc4_ ? 1 : 2);
               }
               switch(§§pop())
               {
                  case 0:
                     SH.fadeToMusic(S_Menu);
                     nextClip = Menu;
                     break;
                  case 1:
                     §§push(!GameStats.getCampaignStats(SD.race,SD.picStage).unitSlots);
                     if(true)
                     {
                        §§push(§§pop() && !GameStats.getCampaignStats(SD.race,SD.picStage).spellSlots);
                     }
                     if(§§pop())
                     {
                        SH.fadeToMusic(GameStats.getCampaignStats(SD.race,SD.picStage).music);
                        nextClip = Game;
                     }
                     else
                     {
                        main.startClass(Roster,{"useClouds":clouds});
                     }
               }
            }
            §§push(_loc1_);
            if(true)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc1_ = §§pop();
         }
         if(true)
         {
            _loc1_ = 1;
            while(_loc1_ <= maxStage)
            {
               _loc3_ = map["mp" + _loc1_];
               if(true)
               {
                  if(_loc3_.currentFrame > 2)
                  {
                     if(true)
                     {
                     }
                  }
                  else if(_loc3_.hitTestPoint(mouseX,mouseY,true))
                  {
                     setPoint(_loc1_);
                  }
                  _loc1_++;
               }
            }
         }
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
   }
}

