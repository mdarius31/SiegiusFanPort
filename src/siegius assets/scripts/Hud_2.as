package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1078")]
   public class Hud extends MovieClip
   {
      
      public var txt_custom2:TextField;
      
      public var txt_custom1:TextField;
      
      private var clickedDefense:Boolean;
      
      public var mc_hpbar2:MovieClip;
      
      public var gold:uint;
      
      public var mc_hpbar1:MovieClip;
      
      public var txt_name1:TextField;
      
      public var txt_name2:TextField;
      
      public var customNum1:uint = 0;
      
      public var customNum2:uint = 0;
      
      private var hpBarSize:Number;
      
      public var but_max:MovieClip;
      
      public var mc_baseattack:MovieClip;
      
      public var popup:MovieClip;
      
      private var popActive:Boolean = false;
      
      private var selMineBox:Object;
      
      public var nomagicCreated:Boolean;
      
      public var txt_gold:TextField;
      
      private var unitAr:Array;
      
      public var holdUnit:*;
      
      public var goldSpent:uint = 0;
      
      public var goldEarned:uint = 0;
      
      public var checkDeadUnit1:String = "";
      
      public var defenseUp:uint;
      
      public var checkDeadNum1:uint = 0;
      
      private var popGo:PopupData;
      
      public var checkDeadUnit2:String = "";
      
      public var unitDeaths:uint = 0;
      
      public var but_ff:MovieClip;
      
      public var blackbars:MovieClip;
      
      private var placeAmt:uint;
      
      private var popTop:int = 344;
      
      public var curHp:Number;
      
      public var checkDeadNum2:uint = 0;
      
      public var goldShow:Number;
      
      public var buttons:Array;
      
      public var mc_face1:MovieClip;
      
      private var selPop:uint;
      
      public var mc_face2:MovieClip;
      
      public var hudBar:MovieClip;
      
      public var unitKills:uint = 0;
      
      public var customText2:String = "";
      
      private var popBot:int = 430;
      
      public var customText1:String = "";
      
      public var maxHp:Number;
      
      private var selBut:MovieClip;
      
      public var frameCounter:uint = 0;
      
      public var but1:MovieClip;
      
      public var but2:MovieClip;
      
      public var but3:MovieClip;
      
      public var but4:MovieClip;
      
      public var but5:MovieClip;
      
      public var but6:MovieClip;
      
      public var but7:MovieClip;
      
      public var but8:MovieClip;
      
      public var but9:MovieClip;
      
      public var iceCreated:Boolean;
      
      public var but0:MovieClip;
      
      public var game:Game;
      
      public function Hud(param1:Game)
      {
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         frameCounter = 0;
         popTop = 344;
         popBot = 430;
         popActive = false;
         goldEarned = 0;
         goldSpent = 0;
         unitKills = 0;
         unitDeaths = 0;
         customNum1 = 0;
         customNum2 = 0;
         customText1 = "";
         customText2 = "";
         checkDeadUnit1 = "";
         checkDeadUnit2 = "";
         checkDeadNum1 = 0;
         checkDeadNum2 = 0;
         super();
         addFrameScript(0,frame1,46,frame47);
         game = param1;
         hpBarSize = mc_hpbar1.width;
         selPop = 0;
         hudBar.gotoAndStop(GameStats.getRaceStats(SD.race).bar);
         unitAr = new Array();
         _loc2_ = GameStats.getCampaignStats(SD.race,SD.picStage);
         if(true)
         {
            unitAr.push(_loc2_.ability ? "s_defense" : "locked");
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(true)
            {
               §§push(7);
               if(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     unitAr.push(_loc2_.general ? SD.race + "_general" : "locked");
                     buttons = new Array(10);
                     §§push(0);
                     if(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                        }
                        addr339:
                        popGo = new PopupData(popBot);
                        popup.stop();
                        gold = 0;
                        goldShow = 0;
                        defenseUp = 1;
                        if(_loc2_.ability >= 2)
                        {
                           SD.upgrades.s_defense.up2 = "defup";
                        }
                        else
                        {
                           SD.upgrades.s_defense.up2 = null;
                        }
                        if(_loc2_.ability == 3)
                        {
                           SD.upgrades.s_defense.up3 = "defup";
                        }
                        else
                        {
                           SD.upgrades.s_defense.up3 = null;
                        }
                        setHp(_loc2_.yourHp);
                        return;
                        addr336:
                     }
                     while(true)
                     {
                        §§push(9);
                        addr228:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              buttons[_loc3_].but.txt_hotkey.text = "" + (_loc3_ == 0 ? "~" : _loc3_);
                           }
                           if(buttons[_loc3_].frame != "locked" && buttons[_loc3_].frame != "pause")
                           {
                              if(checkIsSpell(buttons[_loc3_].frame))
                              {
                                 buttons[_loc3_].but.desc.txt_name.text = UnitStats.spell[buttons[_loc3_].frame].name;
                                 buttons[_loc3_].but.desc.txt_desc.text = UnitStats.spell[buttons[_loc3_].frame].desc2;
                              }
                              else
                              {
                                 buttons[_loc3_].but.desc.txt_name.text = UnitStats.unit[buttons[_loc3_].frame].name;
                                 buttons[_loc3_].but.desc.txt_desc.text = UnitStats.unit[buttons[_loc3_].frame].desc2;
                              }
                           }
                           §§push(_loc3_);
                           break loop0;
                        }
                     }
                     addr227:
                  }
                  else
                  {
                     unitAr.push(SD.army[_loc3_]);
                     §§push(_loc3_);
                     if(true)
                     {
                        §§push(uint(§§pop() + 1));
                        if(true)
                        {
                           continue;
                        }
                        addr335:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr336);
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(10);
                  }
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§goto(addr339);
                  }
                  else
                  {
                     §§push(_loc3_);
                     if(true)
                     {
                        _loc4_ = §§pop() >= unitAr.length ? "locked" : unitAr[_loc3_];
                        if(_loc4_ == "blank")
                        {
                           _loc4_ = "locked";
                        }
                        §§push(_loc3_);
                     }
                     §§push(1);
                     if(true)
                     {
                        if(§§pop() + §§pop() == 10)
                        {
                           _loc4_ = "pause";
                        }
                        buttons[_loc3_] = {
                           "but":this["but" + _loc3_],
                           "frame":_loc4_,
                           "cdCur":0,
                           "cdMax":0
                        };
                        buttons[_loc3_].but.gotoAndStop(buttons[_loc3_].frame);
                        §§goto(addr227);
                        §§push(_loc3_);
                     }
                     §§goto(addr228);
                  }
               }
            }
            break;
            _loc3_ = §§pop();
         }
         while(true)
         {
            §§goto(addr335);
         }
      }
      
      public function MouseUp() : void
      {
         if(true)
         {
            if(!(K.keys & K.SPACE))
            {
               game.fastfoward = false;
            }
         }
      }
      
      private function checkIsSpell(param1:String) : Boolean
      {
         return param1.substring(0,2) == "s_";
      }
      
      public function setButFrame(param1:uint, param2:String) : void
      {
         if(true)
         {
            buttons[param1].frame = param2;
            if(true)
            {
               buttons[param1].but.gotoAndStop(param2);
               if(true)
               {
                  §§push(buttons[param1].frame == "locked");
                  if(!(buttons[param1].frame == "locked"))
                  {
                     §§pop();
                     addr76:
                     if(true)
                     {
                        §§push(buttons[param1].frame == "pause");
                     }
                     buttons[param1].but.desc.txt_desc.text = UnitStats.spell[buttons[param1].frame].desc2;
                  }
                  if(§§pop())
                  {
                     if(true)
                     {
                        return;
                     }
                  }
                  else if(!checkIsSpell(buttons[param1].frame))
                  {
                     buttons[param1].but.desc.txt_name.text = UnitStats.unit[buttons[param1].frame].name;
                  }
                  buttons[param1].but.desc.txt_name.text = UnitStats.spell[buttons[param1].frame].name;
                  §§goto(addr76);
               }
            }
            buttons[param1].but.desc.txt_desc.text = UnitStats.unit[buttons[param1].frame].desc2;
         }
      }
      
      public function clickPopup(param1:uint) : void
      {
         if(true)
         {
            §§push(popup["but" + param1].currentLabel == "locked");
            if(true)
            {
               if(!§§pop())
               {
                  if(true)
                  {
                     §§pop();
                     addr117:
                     if(true)
                     {
                        §§push(popup["but" + param1].bg.currentFrame == 4);
                     }
                     MouseDown();
                  }
                  addr64:
                  if(§§pop())
                  {
                     if(true)
                     {
                        holdUnit = UnitStats.spell[selBut.currentLabel];
                        if(true)
                        {
                           if(holdUnit.id == "s_defense")
                           {
                              if(true)
                              {
                                 clickedDefense = true;
                              }
                           }
                        }
                     }
                     addr96:
                     selPop = param1;
                     addr99:
                     popGo.y = popBot;
                     §§push(clickedDefense);
                  }
                  else
                  {
                     holdUnit = UnitStats.unit[selBut.currentLabel];
                  }
                  selBut = null;
                  §§goto(addr96);
               }
               if(§§pop())
               {
                  if(true)
                  {
                     return;
                  }
                  addr114:
                  popActive = false;
                  §§goto(addr117);
               }
               else
               {
                  holdUnit = null;
                  if(true)
                  {
                     SH.playSound(S_Click);
                     if(true)
                     {
                        §§goto(addr64);
                        §§push(checkIsSpell(selBut.currentLabel));
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr96);
               }
            }
            if(§§pop())
            {
               clickedDefense = false;
               §§goto(addr114);
            }
         }
      }
      
      private function getUnitDistance(param1:uint) : Number
      {
         §§push(placeAmt * (20 + 10));
         if(true)
         {
            §§push(0.5);
            if(true)
            {
               addr45:
               §§push(§§pop() * §§pop());
               if(true)
               {
                  §§push(-§§pop());
                  §§push((param1 + 1) * (20 + 10));
               }
               §§push(§§pop() - 10);
            }
            §§goto(addr45);
            §§push(§§pop() + §§pop());
         }
         return §§pop();
      }
      
      public function populateAll() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < 9)
            {
               setButFrame(_loc1_,_loc1_ >= unitAr.length ? "locked" : unitAr[_loc1_]);
               if(false)
               {
                  break;
               }
               §§push(_loc1_);
               if(true)
               {
                  continue loop0;
               }
            }
            return;
            _loc1_ = §§pop() + 1;
         }
      }
      
      internal function frame1() : *
      {
         mc_baseattack.gotoAndStop(mc_baseattack.totalFrames);
         gotoAndStop("wordend");
      }
      
      public function setHpBar(param1:MovieClip, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         if(true)
         {
            _loc4_ = param2 / param3;
            if(true)
            {
               param1.width = _loc4_ * hpBarSize;
            }
            param1.gotoAndStop(Math.ceil(_loc4_ * 50));
         }
      }
      
      internal function frame47() : *
      {
         stop();
      }
      
      private function isPlacable() : Boolean
      {
         var _loc1_:* = false;
         var _loc2_:* = 0;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         if(true)
         {
            §§push(false);
            if(true)
            {
               _loc1_ = §§pop();
               addr47:
               if(true)
               {
                  §§push(checkIsSpell(holdUnit.id));
               }
               _loc2_ = 0;
            }
            if(!§§pop())
            {
               if(true)
               {
                  placeAmt = holdUnit.amt;
                  selMineBox = null;
               }
               if(holdUnit.atkTyp & UnitStats.$)
               {
                  §§goto(addr47);
               }
               else
               {
                  addr222:
                  §§push(popGo.upgrade.id == "units");
                  if(true)
                  {
                     if(§§pop())
                     {
                        if(true)
                        {
                           §§pop();
                           if(true)
                           {
                              §§push(selPop > 1);
                              if(true)
                              {
                              }
                           }
                           addr224:
                           if(holdUnit.id == "s_defense")
                           {
                              addr229:
                              _loc1_ = true;
                           }
                           return _loc1_;
                           addr230:
                        }
                        addr209:
                        §§pop();
                        addr210:
                        §§push(mouseY < game.background.placeBot);
                     }
                     if(§§pop())
                     {
                        if(true)
                        {
                           placeAmt *= popGo.upgrade["upMod" + selPop];
                           if(true)
                           {
                           }
                           addr201:
                        }
                        else
                        {
                           §§goto(addr210);
                        }
                        §§goto(addr230);
                     }
                     _loc4_ = (placeAmt - 1) * 0.5 * (20 + 10) - 5;
                     if(true)
                     {
                        §§push(mouseY - _loc4_ > game.background.placeTop);
                        if(true)
                        {
                           if(§§pop())
                           {
                              if(true)
                              {
                                 §§pop();
                              }
                           }
                           addr199:
                           §§push(§§pop());
                        }
                        _loc1_ = §§pop();
                        §§goto(addr201);
                     }
                     §§goto(addr199);
                     §§push(mouseY + _loc4_ < game.background.placeBot);
                  }
                  §§push(§§pop());
               }
               addr223:
               _loc1_ = §§pop();
               §§goto(addr224);
            }
            else
            {
               §§push(mouseY > game.background.placeTop);
            }
            if(§§pop())
            {
               §§goto(addr209);
            }
            §§goto(addr222);
         }
         while(true)
         {
            §§push(_loc2_ < game.background.mines0.length);
            if(true)
            {
               if(§§pop())
               {
                  if(true)
                  {
                     §§pop();
                     if(true)
                     {
                        §§push(!selMineBox);
                        if(false)
                        {
                           §§goto(addr223);
                        }
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr229);
               }
               if(!§§pop())
               {
                  if(true)
                  {
                     §§goto(addr201);
                  }
                  else
                  {
                     §§goto(addr229);
                  }
               }
               else
               {
                  _loc3_ = game.background.mines0[_loc2_];
                  if(false)
                  {
                     continue;
                  }
                  §§push(!_loc3_.used);
                  if(!_loc3_.used)
                  {
                     §§pop();
                     addr94:
                     if(true)
                     {
                        §§push(UT.inBox(mouseX,mouseY,_loc3_.MC.x - 30,_loc3_.MC.y - 20,60,40));
                     }
                     §§push(_loc2_);
                     if(true)
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  if(§§pop())
                  {
                     if(true)
                     {
                        _loc1_ = true;
                     }
                     selMineBox = _loc3_;
                  }
                  §§goto(addr94);
               }
            }
            break;
         }
         §§goto(addr224);
      }
      
      public function MouseDown() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         §§push(popup.y > popTop + 5);
         §§push(popup.y > popTop + 5);
         if(true)
         {
            if(§§pop())
            {
               §§pop();
               §§push(but_max.hitTestPoint(mouseX,mouseY,false));
            }
            if(§§pop())
            {
               SD.urlSponsor();
            }
            §§push(popup.y > popTop + 5);
            §§push(popup.y > popTop + 5);
            if(true)
            {
               if(§§pop())
               {
                  §§pop();
                  §§push(Boolean(but_ff.hitbox.hitTestPoint(mouseX,mouseY,false)));
               }
               if(§§pop())
               {
                  game.fastfoward = true;
               }
               §§push(blackbars.currentFrame == 2);
               §§push(blackbars.currentFrame == 2);
            }
            if(!§§pop())
            {
               §§pop();
               §§push(blackbars.currentFrame == 3);
            }
            §§push(§§pop());
         }
         if(§§pop())
         {
            §§pop();
            §§push(Boolean(blackbars.txt_skip.hitTestPoint(game.mouseX,game.mouseY)));
         }
         if(§§pop())
         {
            blackbars.gotoAndStop(4);
            game.cmp.phase = 10;
            game.cmp.prepareNewPhase();
         }
         if(holdUnit)
         {
            if(isPlacable())
            {
               gold -= holdUnit.cost * popGo.upgrade["priceMod" + selPop];
               goldSpent += holdUnit.cost * popGo.upgrade["priceMod" + selPop];
               if(!checkIsSpell(holdUnit.id))
               {
                  _loc1_ = 0;
                  while(_loc1_ < placeAmt)
                  {
                     _loc2_ = getUnitDistance(_loc1_);
                     _loc3_ = new Object();
                     if(selMineBox)
                     {
                        _loc3_.mineBox = selMineBox;
                     }
                     game.createUnit(0,0,mouseY + _loc2_,holdUnit.id,selPop > 1 ? SD.upgrades[holdUnit.id]["up" + selPop] : "blank",selPop,_loc3_);
                     _loc1_++;
                  }
                  SH.playSound(S_Place);
                  buttons[popGo.i].cdCur = buttons[popGo.i].cdMax;
                  addr256:
               }
               else
               {
                  if(holdUnit.id == "s_ice")
                  {
                     iceCreated = true;
                  }
                  if(holdUnit.id == "s_nomagic")
                  {
                     nomagicCreated = true;
                  }
                  §§push(game);
                  if(true)
                  {
                     §§pop().createSpell(0,mouseX - game.background.offset,mouseY,holdUnit.id,selPop > 1 ? SD.upgrades[holdUnit.id]["up" + selPop] : "blank",selPop);
                     buttons[popGo.i].cdCur = buttons[popGo.i].cdMax;
                     §§goto(addr256);
                  }
               }
               addr354:
               §§pop().pauseOn();
               §§goto(addr355);
            }
            else
            {
               SH.playSound(S_Noplace);
            }
            holdUnit = null;
         }
         §§push(0);
         if(true)
         {
            _loc1_ = §§pop();
            while(true)
            {
               §§push(_loc1_);
               §§push(10);
               if(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(buttons[_loc1_].but.hitbox.hitTestPoint(game.mouseX,game.mouseY,false))
                     {
                        clickButton(_loc1_);
                     }
                     _loc1_++;
                     continue;
                  }
                  clickedDefense = false;
                  §§push(popActive);
                  if(true)
                  {
                     §§goto(addr329);
                  }
                  if(§§pop())
                  {
                     §§goto(addr351);
                     §§push(game);
                  }
                  else
                  {
                     §§goto(addr354);
                     §§push(game);
                  }
                  §§goto(addr354);
               }
               break;
            }
            loop2:
            while(§§pop() <= §§pop())
            {
               if(popup["but" + _loc1_].hitbox.hitTestPoint(game.mouseX,game.mouseY,false))
               {
                  clickPopup(_loc1_);
               }
               _loc1_++;
               while(true)
               {
                  continue loop2;
               }
            }
            addr329:
            if(§§pop())
            {
               §§push(1);
            }
            if(but9.hitTestPoint(mouseX,mouseY,false))
            {
               SH.playSound(S_Click);
               addr351:
               §§push(game);
               if(true)
               {
                  §§push(§§pop().pause);
               }
               §§pop().pauseOff();
            }
            addr355:
            return;
         }
         _loc1_ = §§pop();
         §§goto(addr326);
      }
      
      public function clickButton(param1:uint) : void
      {
         if(true)
         {
            §§push(buttons[param1].frame == "locked");
            if(true)
            {
               §§push(§§pop());
               if(true)
               {
                  if(!§§pop())
                  {
                     addr59:
                     if(true)
                     {
                        §§pop();
                        addr227:
                        if(true)
                        {
                           §§push(buttons[param1].frame == "pause");
                           if(true)
                           {
                           }
                           addr53:
                           §§pop();
                           addr199:
                           if(true)
                           {
                              §§push(param1 > 8);
                           }
                        }
                     }
                     if(§§pop())
                     {
                        if(true)
                        {
                           return;
                        }
                     }
                     else
                     {
                        holdUnit = null;
                        if(true)
                        {
                           SH.playSound(S_Click);
                           if(true)
                           {
                              if(this["but" + param1] == selBut)
                              {
                                 if(true)
                                 {
                                    selBut = null;
                                    if(true)
                                    {
                                       §§push(popGo);
                                       if(true)
                                       {
                                          §§pop().y = popBot;
                                          if(true)
                                          {
                                          }
                                       }
                                       addr229:
                                       §§pop().upgrade = UnitStats.upgrades["blank"];
                                    }
                                    addr154:
                                    popGo.isSpell = true;
                                 }
                              }
                              else
                              {
                                 selBut = buttons[param1].but;
                                 if(true)
                                 {
                                    selBut.bg.gotoAndStop(3);
                                    if(true)
                                    {
                                       §§push(popGo);
                                       if(true)
                                       {
                                          §§pop().x = selBut.x + 17;
                                          §§push(popGo);
                                          if(true)
                                          {
                                             §§pop().y = popTop;
                                          }
                                          addr188:
                                          §§pop().upgrade = UnitStats.upgrades[SD.upgrades[popGo.unit.id].up2];
                                          §§goto(addr199);
                                       }
                                       §§pop().upgrade = UnitStats.upgrades[SD.upgrades[popGo.unit.id].up3];
                                       addr209:
                                       §§goto(addr227);
                                    }
                                    §§push(popGo);
                                    if(true)
                                    {
                                       §§pop().i = param1;
                                    }
                                    addr168:
                                    §§pop().isSpell = false;
                                 }
                                 §§push(checkIsSpell(buttons[param1].frame));
                              }
                              addr143:
                              §§push(popGo);
                              if(true)
                              {
                                 §§pop().unit = UnitStats.spell[buttons[param1].frame];
                                 §§goto(addr154);
                              }
                              else
                              {
                                 addr159:
                                 §§pop().unit = UnitStats.unit[buttons[param1].frame];
                              }
                           }
                           §§goto(addr168);
                           §§push(popGo);
                        }
                        buttons[param1].cdMax = popGo.unit.cooldown * 30;
                        if(!SD.upgrades[popGo.unit.id].up2)
                        {
                           if(SD.upgrades[popGo.unit.id].up3)
                           {
                              addr208:
                              §§goto(addr209);
                              §§push(popGo);
                           }
                           else
                           {
                              §§goto(addr229);
                              §§push(popGo);
                           }
                        }
                     }
                     §§goto(addr188);
                     §§push(popGo);
                  }
                  §§push(§§pop());
                  if(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(true)
                        {
                           §§push(buttons[param1].cdCur);
                        }
                        §§goto(addr208);
                     }
                  }
                  §§push(§§pop());
               }
               if(!§§pop())
               {
                  §§goto(addr53);
               }
               §§goto(addr59);
            }
            if(§§pop())
            {
               §§goto(addr143);
            }
            else
            {
               §§push(popGo);
            }
            §§goto(addr159);
         }
      }
      
      public function getHpPerc() : Number
      {
         return curHp / maxHp;
      }
      
      public function setHp(param1:Number) : void
      {
         if(true)
         {
            curHp = maxHp = param1;
            setHpBar(mc_hpbar1,curHp,maxHp);
         }
      }
      
      public function clickUnit(param1:uint) : void
      {
         if(true)
         {
            if(popActive)
            {
               if(true)
               {
                  §§push(param1 == popGo.i);
                  §§push(param1 == popGo.i);
                  if(true)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(true)
                        {
                           §§push(param1);
                           §§push(popGo.i);
                           §§push(1);
                           if(true)
                           {
                              §§push(§§pop() + §§pop());
                              if(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 §§push(§§pop() == §§pop());
                                 if(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       addr83:
                                       if(true)
                                       {
                                          §§push(popup["but" + 2].currentLabel != "locked");
                                       }
                                       clickPopup(param1 - popGo.i + 1);
                                    }
                                 }
                                 addr60:
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    addr73:
                                    if(true)
                                    {
                                       §§push(param1);
                                       §§push(popGo.i);
                                       §§push(2);
                                    }
                                    §§push(popup["but" + 3].currentLabel != "locked");
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr83);
                                 }
                                 else
                                 {
                                    clickButton(param1);
                                 }
                              }
                              addr69:
                              §§push(§§pop() == §§pop());
                              §§push(§§pop() == §§pop());
                           }
                           §§goto(addr69);
                           §§push(§§pop() + §§pop());
                        }
                     }
                     §§goto(addr60);
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§goto(addr73);
                  }
                  §§goto(addr60);
               }
            }
            else
            {
               clickButton(param1);
            }
         }
      }
      
      public function lockAllExcept(param1:int = -1) : void
      {
         var _loc2_:uint = 0;
         _loc2_ = 0;
         while(_loc2_ < 9)
         {
            if(_loc2_ != param1)
            {
               setButFrame(_loc2_,"locked");
            }
            _loc2_++;
         }
      }
      
      private function updatePopup() : void
      {
         if(popGo.unit)
         {
            popup.cost1.text = "" + popGo.unit.cost;
            popup.but1.gotoAndStop(popGo.unit.id);
            if(popGo.unit.id == "s_defense")
            {
               popup.but1.gotoAndStop("defup1");
            }
            if(SD.upgrades[popGo.unit.id].up2)
            {
               popup.cost2.text = "" + Math.round(popGo.unit.cost * popGo.upgrade.priceMod2);
               popup.but2.gotoAndStop(popGo.upgrade.id + 2);
            }
            else
            {
               popup.cost2.text = "---";
               popup.but2.gotoAndStop("locked");
            }
            if(SD.upgrades[popGo.unit.id].up3)
            {
               popup.cost3.text = "" + Math.round(popGo.unit.cost * popGo.upgrade.priceMod3);
               popup.but3.gotoAndStop(popGo.upgrade.id + 3);
            }
            else
            {
               popup.cost3.text = "---";
               popup.but3.gotoAndStop("locked");
            }
            popup.but1.txt_hotkey.text = "" + (popGo.i == 0 ? "~" : popGo.i);
            popup.but2.txt_hotkey.text = "" + (popGo.i + 1);
            popup.but3.txt_hotkey.text = "" + (popGo.i + 2 == 10 ? "0" : popGo.i + 2);
            setPopupStatus();
         }
      }
      
      public function damage(param1:Number, param2:uint = 0) : void
      {
         if(true)
         {
            if(param2)
            {
               if(true)
               {
                  mc_baseattack.gotoAndPlay(1);
                  if(true)
                  {
                     §§push(game);
                     if(true)
                     {
                        §§pop().base0.arch1.play();
                        if(true)
                        {
                           §§push(game);
                           if(true)
                           {
                              §§pop().base0.arch2.play();
                              addr66:
                              if(true)
                              {
                                 §§push(game);
                                 if(true)
                                 {
                                    §§pop().base0.arch3.play();
                                    if(true)
                                    {
                                       §§push(game);
                                    }
                                 }
                                 §§pop().base0.arch4.play();
                                 §§push(game);
                              }
                              if(curHp <= 1)
                              {
                              }
                           }
                           §§pop().base0.arch5.play();
                        }
                        curHp = 1;
                     }
                     addr80:
                     §§pop().defeat();
                  }
                  §§goto(addr80);
                  §§push(game);
               }
               setHpBar(mc_hpbar1,curHp,maxHp);
            }
            §§push(§§findproperty(curHp));
            §§push(curHp);
            if(true)
            {
               §§push(§§pop() - param1);
            }
            §§pop().curHp = §§pop();
            §§goto(addr66);
         }
      }
      
      public function addArcher() : void
      {
         §§push(defenseUp);
         if(true)
         {
            §§goto(addr54);
         }
         addr54:
         §§push(5);
         if(true)
         {
            if(§§pop() == §§pop())
            {
               return;
            }
            var _loc1_:* = §§findproperty(defenseUp);
            var _loc2_:* = _loc1_.defenseUp + 1;
            if(true)
            {
               _loc1_.defenseUp = _loc2_;
            }
            game.base0["arch" + defenseUp].visible = true;
            §§push(defenseUp);
         }
         if(§§pop() == §§pop())
         {
            SD.upgrades.s_defense.up3 = null;
            updatePopup();
         }
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:* = param1.keyCode;
         if(true)
         {
            if(192 === _loc2_)
            {
               §§goto(addr125);
            }
            else
            {
               if(49 === _loc2_)
               {
                  if(true)
                  {
                     §§push(1);
                  }
                  §§goto(addr125);
               }
               else
               {
                  if(50 === _loc2_)
                  {
                     if(true)
                     {
                        §§push(2);
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     if(51 === _loc2_)
                     {
                        if(true)
                        {
                           §§push(3);
                        }
                        §§goto(addr125);
                     }
                     else
                     {
                        if(52 === _loc2_)
                        {
                           if(true)
                           {
                              §§push(4);
                           }
                        }
                        else if(53 !== _loc2_)
                        {
                           if(54 !== _loc2_)
                           {
                              if(55 !== _loc2_)
                              {
                                 if(56 !== _loc2_)
                                 {
                                    if(48 !== _loc2_)
                                    {
                                       if(57 !== _loc2_)
                                       {
                                          §§push(11);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr125);
                        return;
                        §§push(5);
                     }
                     §§goto(addr125);
                     §§push(6);
                  }
                  §§goto(addr125);
                  §§push(7);
               }
               §§goto(addr125);
               §§push(8);
            }
            §§goto(addr125);
            §§push(9);
         }
         §§goto(addr125);
         §§push(10);
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(true)
         {
            ++frameCounter;
            if(true)
            {
               §§push(popup.y > popTop + 5);
               if(popup.y > popTop + 5)
               {
                  §§pop();
                  addr116:
                  if(true)
                  {
                     §§push(but_max.hitTestPoint(mouseX,mouseY,false));
                  }
                  but_ff.gotoAndStop(3);
               }
               if(§§pop())
               {
                  if(true)
                  {
                     but_max.alpha = 1;
                     if(true)
                     {
                        addr68:
                        §§push(popup.y > popTop + 5);
                        if(popup.y > popTop + 5)
                        {
                           §§pop();
                           addr103:
                           if(true)
                           {
                              §§push(but_ff.hitbox.hitTestPoint(mouseX,mouseY,false));
                           }
                           but_ff.gotoAndStop(2);
                        }
                        if(!§§pop())
                        {
                           §§pop();
                           §§push(K.keys);
                           if(true)
                           {
                              addr120:
                              §§push(§§pop() & K.SPACE);
                              if(true)
                              {
                                 §§push(§§pop());
                              }
                              §§push(§§pop());
                           }
                           _loc1_ = §§pop();
                        }
                        if(§§pop())
                        {
                           §§goto(addr103);
                        }
                        else
                        {
                           but_ff.gotoAndStop(1);
                        }
                     }
                     game.fastfoward = false;
                  }
                  addr113:
                  if(game.fastfoward)
                  {
                     §§goto(addr116);
                  }
               }
               else
               {
                  but_max.alpha = 0.6;
                  if(true)
                  {
                     §§goto(addr68);
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr120);
            §§push(0);
         }
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(true)
            {
               if(§§pop() >= 10)
               {
                  if(true)
                  {
                     if(popup.x == popGo.x)
                     {
                        if(true)
                        {
                           popup.y += (popGo.y - popup.y) * 0.6;
                           if(true)
                           {
                              addr601:
                              popActive = popup.y < popTop + 5;
                              if(true)
                              {
                                 §§push(popActive);
                                 if(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(true)
                                       {
                                          setPopupStatus();
                                          if(true)
                                          {
                                          }
                                          loop28:
                                          while(true)
                                          {
                                             addr986:
                                             loop6:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr987:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(game.screen);
                                                         if(true)
                                                         {
                                                            §§push(game.mouseX - holdUnit.wdth);
                                                            if(true)
                                                            {
                                                               §§push(game);
                                                               if(true)
                                                               {
                                                                  §§push(§§pop() - §§pop().background.offset);
                                                                  if(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     §§push(game);
                                                                     if(true)
                                                                     {
                                                                        §§pop().paintBox(§§pop(),§§pop() + §§pop().mouseY - 10,holdUnit.wdth * 2,20,3);
                                                                        while(true)
                                                                        {
                                                                           addr1051:
                                                                           while(true)
                                                                           {
                                                                              §§push(game.screen);
                                                                           }
                                                                        }
                                                                        addr1022:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() + §§pop().mouseY - 10);
                                                                           §§push(holdUnit.wdth * 2);
                                                                           §§push(20);
                                                                        }
                                                                        addr1040:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().paintBox(§§pop(),§§pop(),§§pop(),§§pop(),4);
                                                                        §§goto(addr1051);
                                                                     }
                                                                     addr1049:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     §§push(game);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§pop().paintObject(§§pop(),§§pop() + §§pop().mouseY - holdUnit.offY,BH.getBit(holdUnit.id,"walk"));
                                                                        addr1075:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr1076:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(game.screen);
                                                                                    addr1079:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(game.mouseX - 30);
                                                                                    }
                                                                                 }
                                                                                 addr1077:
                                                                              }
                                                                              addr1097:
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_);
                                                                                 addr1098:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + 1);
                                                                                    addr1099:
                                                                                    addr1192:
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr1100:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc1_ = §§pop();
                                                                                          addr1101:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             addr1102:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() >= placeAmt)
                                                                                                {
                                                                                                   addr1104:
                                                                                                   break loop17;
                                                                                                }
                                                                                                §§push(getUnitDistance(_loc1_));
                                                                                                if(true)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(true)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(holdUnit.atkTyp & UnitStats.E)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(holdUnit.effSize));
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(popGo.upgrade);
                                                                                                                     if(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().id == "range");
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop();
                                                                                                                                 addr755:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(selPop);
                                                                                                                                    addr756:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > 1);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr754:
                                                                                                                           }
                                                                                                                           addr758:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       addr1145:
                                                                                                                                       §§push(popGo.upgrade);
                                                                                                                                       §§push("upMod");
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          addr1146:
                                                                                                                                          addr1149:
                                                                                                                                          addr1150:
                                                                                                                                          §§push(selPop);
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop()[§§pop() + §§pop()]);
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr1114:
                                                                                                                                                   _loc5_ = §§pop();
                                                                                                                                                   §§push(Number(holdUnit.rangeY));
                                                                                                                                                }
                                                                                                                                                addr1178:
                                                                                                                                                §§pop().paintBox(game.mouseX - game.background.offset - _loc5_ / 2,game.mouseY - _loc6_ / 2,_loc5_,_loc6_,_loc2_ ? 5 : 9);
                                                                                                                                                game.background.npzTop.visible = game.background.npzBot.visible = true;
                                                                                                                                                break loop17;
                                                                                                                                                addr1153:
                                                                                                                                                addr1171:
                                                                                                                                                addr1164:
                                                                                                                                                addr1163:
                                                                                                                                                addr1159:
                                                                                                                                             }
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             addr1119:
                                                                                                                                             §§push(popGo.upgrade);
                                                                                                                                          }
                                                                                                                                          _loc6_ = §§pop() * §§pop()[§§pop() + §§pop()];
                                                                                                                                          §§goto(addr1153);
                                                                                                                                          §§push(game.screen);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1146);
                                                                                                                                       §§push(selPop);
                                                                                                                                    }
                                                                                                                                    addr1132:
                                                                                                                                 }
                                                                                                                                 addr759:
                                                                                                                              }
                                                                                                                              addr779:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(game.screen);
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    §§push(game.mouseX - _loc4_);
                                                                                                                                    if(true)
                                                                                                                                    {
                                                                                                                                       §§push(game);
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - §§pop().background.offset);
                                                                                                                                          if(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             §§push(game);
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop().mouseY - _loc4_);
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                §§push(2);
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   break loop16;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                §§push(_loc4_);
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   §§push(2);
                                                                                                                                                   if(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(2);
                                                                                                                                                         if(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop().paintBox(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               game.background.npzTop.visible = game.background.npzBot.visible = true;
                                                                                                                                                               continue loop28;
                                                                                                                                                            }
                                                                                                                                                            addr823:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr1174);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1178);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1177);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1174);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1171);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1164);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1163);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr1178);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr752:
                                                                                                                     }
                                                                                                                     addr1124:
                                                                                                                     if(§§pop().id == "range" && selPop > 1)
                                                                                                                     {
                                                                                                                        addr1131:
                                                                                                                        §§goto(addr1132);
                                                                                                                        §§push(_loc5_);
                                                                                                                     }
                                                                                                                     §§goto(addr1146);
                                                                                                                  }
                                                                                                                  addr745:
                                                                                                               }
                                                                                                            }
                                                                                                            addr739:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(holdUnit.atkTyp & UnitStats.$);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  §§push(Number(holdUnit.rangeX));
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     _loc5_ = §§pop();
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     addr940:
                                                                                                                     addr899:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(game.screen);
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           §§push(game.mouseX + holdUnit.wdth - game.background.offset);
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              §§push(game);
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop().mouseY - _loc6_);
                                                                                                                              §§push(_loc5_);
                                                                                                                              §§push(_loc6_);
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 addr972:
                                                                                                                                 §§push(2);
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 §§pop().paintBox(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    game.background.npzTop.visible = game.background.npzBot.visible = true;
                                                                                                                                    continue loop6;
                                                                                                                                 }
                                                                                                                                 addr973:
                                                                                                                              }
                                                                                                                              §§goto(addr972);
                                                                                                                              §§push(1);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr1079);
                                                                                                                        }
                                                                                                                        addr1087:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           §§push(game);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     _loc6_ = §§pop();
                                                                                                                  }
                                                                                                                  addr939:
                                                                                                               }
                                                                                                            }
                                                                                                            addr842:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().paintObject(§§pop(),§§pop() + §§pop().mouseY - 60,BH.getBit("noplace"));
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                      }
                                                                                                      addr733:
                                                                                                   }
                                                                                                   _loc5_ = §§pop();
                                                                                                   addr1141:
                                                                                                   §§push(_loc6_);
                                                                                                }
                                                                                                §§goto(addr1145);
                                                                                                §§push(popGo.upgrade);
                                                                                                §§push("upMod");
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr1192:
                                                                                    addr1206:
                                                                                    goldShow += (gold - goldShow) * 0.2;
                                                                                    goldShow = Math.round(goldShow);
                                                                                    addr1226:
                                                                                    addr1231:
                                                                                    if(goldShow < gold)
                                                                                    {
                                                                                       addr1209:
                                                                                       ++goldShow;
                                                                                    }
                                                                                    if(goldShow > gold)
                                                                                    {
                                                                                       addr1223:
                                                                                       goldShow = gold;
                                                                                    }
                                                                                    txt_gold.text = "" + goldShow;
                                                                                    if(customText1)
                                                                                    {
                                                                                       addr1233:
                                                                                       txt_custom1.text = customText1.replace("@","" + customNum1);
                                                                                       addr1241:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       txt_custom1.text = "";
                                                                                    }
                                                                                    if(customText2)
                                                                                    {
                                                                                       txt_custom2.text = customText2.replace("@","" + customNum2);
                                                                                       addr1247:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       txt_custom2.text = "";
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr1049);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr1062:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr1087);
                                                               }
                                                               addr1084:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr1084);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(game.mouseX - holdUnit.offX);
                                                         }
                                                      }
                                                      addr988:
                                                   }
                                                   else
                                                   {
                                                      §§push(game.screen);
                                                      §§push(game.mouseX - holdUnit.wdth);
                                                      if(true)
                                                      {
                                                         §§push(game);
                                                         if(true)
                                                         {
                                                            §§goto(addr1040);
                                                            §§push(§§pop() - §§pop().background.offset);
                                                            §§push(_loc3_);
                                                            §§push(game);
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr1062);
                                                         }
                                                         addr1059:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr1059);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(0);
                                          addr844:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr845:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                             }
                                          }
                                       }
                                    }
                                    game.background.npzTop.visible = game.background.npzBot.visible = false;
                                    if(true)
                                    {
                                       §§push(0);
                                       if(true)
                                       {
                                          §§push(§§pop());
                                          if(true)
                                          {
                                             _loc1_ = §§pop();
                                             if(true)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   if(true)
                                                   {
                                                      §§push(game);
                                                      if(true)
                                                      {
                                                         if(§§pop() >= §§pop().background.mines0.length)
                                                         {
                                                            if(true)
                                                            {
                                                               §§push(holdUnit);
                                                               if(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§pop();
                                                                        if(true)
                                                                        {
                                                                           §§push(checkIsSpell(holdUnit.id));
                                                                           if(true)
                                                                           {
                                                                              §§push(!§§pop());
                                                                              if(true)
                                                                              {
                                                                              }
                                                                              addr714:
                                                                              _loc2_ = §§pop();
                                                                              if(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr842);
                                                                              }
                                                                              §§goto(addr1101);
                                                                           }
                                                                           §§goto(addr752);
                                                                        }
                                                                        §§goto(addr739);
                                                                     }
                                                                     §§goto(addr754);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        §§goto(addr714);
                                                                        §§push(isPlacable());
                                                                     }
                                                                     §§goto(addr733);
                                                                  }
                                                                  else if(holdUnit)
                                                                  {
                                                                     addr1110:
                                                                     _loc2_ = isPlacable();
                                                                     §§goto(addr1114);
                                                                     §§push(Number(holdUnit.rangeX));
                                                                     addr1109:
                                                                     addr1107:
                                                                  }
                                                                  §§goto(addr1192);
                                                               }
                                                               §§goto(addr758);
                                                            }
                                                            §§goto(addr745);
                                                         }
                                                         else
                                                         {
                                                            game.background.mines0[_loc1_].MC.visible = false;
                                                            if(true)
                                                            {
                                                               §§push(_loc1_);
                                                               if(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        if(true)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr755);
                                                                     }
                                                                     §§goto(addr756);
                                                                  }
                                                                  §§goto(addr1149);
                                                               }
                                                               §§goto(addr845);
                                                            }
                                                         }
                                                         §§goto(addr759);
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop().background.mines0.length)
                                                         {
                                                            game.background.mines0[_loc1_].MC.visible = true;
                                                            while(true)
                                                            {
                                                               game.background.mines0[_loc1_].MC.gotoAndStop(game.background.mines0[_loc1_].used ? 2 : 1);
                                                               addr875:
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                               }
                                                            }
                                                            addr856:
                                                         }
                                                         §§goto(addr1099);
                                                      }
                                                      addr883:
                                                   }
                                                   break;
                                                }
                                                _loc1_ = §§pop();
                                                §§goto(addr714);
                                             }
                                             §§goto(addr779);
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() + 1);
                                             if(true)
                                             {
                                                §§push(§§pop());
                                                break loop0;
                                             }
                                             §§goto(addr1099);
                                          }
                                       }
                                       §§goto(addr844);
                                    }
                                    §§goto(addr823);
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                       }
                                       addr907:
                                    }
                                    addr911:
                                    loop2:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             if(true)
                                             {
                                                §§push(popGo.upgrade);
                                                §§push("upMod");
                                                if(true)
                                                {
                                                   §§push(selPop);
                                                   if(true)
                                                   {
                                                      §§push(§§pop() * §§pop()[§§pop() + §§pop()]);
                                                      if(true)
                                                      {
                                                         §§push(§§pop());
                                                      }
                                                      _loc5_ = §§pop();
                                                      while(true)
                                                      {
                                                         §§push(_loc6_);
                                                      }
                                                      addr930:
                                                   }
                                                   §§goto(addr1132);
                                                }
                                                break loop2;
                                             }
                                             while(true)
                                             {
                                                §§push(§§pop() * popGo.upgrade["upMod" + selPop]);
                                                addr938:
                                                while(true)
                                                {
                                                   §§goto(addr939);
                                                }
                                             }
                                          }
                                          addr912:
                                       }
                                       §§goto(addr940);
                                    }
                                    §§goto(addr1132);
                                 }
                                 addr905:
                              }
                              while(true)
                              {
                                 addr881:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    addr882:
                                    while(true)
                                    {
                                       §§goto(addr883);
                                    }
                                    break loop0;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(Number(holdUnit.rangeY));
                              if(true)
                              {
                                 §§goto(addr899);
                              }
                              §§goto(addr938);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr905);
                        }
                     }
                     else
                     {
                        popup.y += (popBot - popup.y) * 0.6;
                        if(true)
                        {
                           if(popup.y > popBot - 5)
                           {
                              if(true)
                              {
                                 popup.x = popGo.x;
                                 if(true)
                                 {
                                    updatePopup();
                                    if(true)
                                    {
                                    }
                                    §§goto(addr856);
                                 }
                                 §§goto(addr875);
                              }
                              §§goto(addr881);
                           }
                           §§goto(addr601);
                        }
                     }
                     while(true)
                     {
                        §§goto(addr986);
                     }
                  }
                  while(true)
                  {
                     §§push(selPop);
                     addr909:
                     while(true)
                     {
                        §§goto(addr911);
                     }
                  }
               }
               else
               {
                  buttons[_loc1_].but.desc.visible = false;
                  if(true)
                  {
                     if(buttons[_loc1_].cdCur)
                     {
                        if(true)
                        {
                           var _loc7_:* = buttons[_loc1_];
                           var _loc8_:* = _loc7_.cdCur - 1;
                           if(true)
                           {
                              _loc7_.cdCur = _loc8_;
                           }
                           if(true)
                           {
                              buttons[_loc1_].but.cd.height = buttons[_loc1_].cdCur / buttons[_loc1_].cdMax * 48;
                              if(true)
                              {
                                 buttons[_loc1_].but.cdcover.height = 48;
                                 if(true)
                                 {
                                    addr195:
                                    if(buttons[_loc1_].frame == "locked")
                                    {
                                       if(true)
                                       {
                                          this["but" + _loc1_].bg.gotoAndStop(1);
                                          if(true)
                                          {
                                             addr529:
                                             §§push(_loc1_);
                                             if(true)
                                             {
                                                §§push(§§pop() + 1);
                                                if(true)
                                                {
                                                   §§push(§§pop());
                                                   if(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      if(true)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr912);
                                                   }
                                                   §§goto(addr882);
                                                }
                                                §§goto(addr1150);
                                             }
                                             §§goto(addr909);
                                          }
                                          §§goto(addr1226);
                                       }
                                       §§goto(addr1231);
                                    }
                                    else if(buttons[_loc1_].but == selBut)
                                    {
                                       if(true)
                                       {
                                          §§push(frameCounter);
                                          if(true)
                                          {
                                             §§push(§§pop() % 3);
                                             if(true)
                                             {
                                                if(§§pop() == 0)
                                                {
                                                   if(true)
                                                   {
                                                      if(buttons[_loc1_].but.MC)
                                                      {
                                                         if(true)
                                                         {
                                                            if(buttons[_loc1_].but.MC.currentFrame != buttons[_loc1_].but.MC.totalFrames)
                                                            {
                                                               if(true)
                                                               {
                                                                  buttons[_loc1_].but.MC.nextFrame();
                                                                  if(true)
                                                                  {
                                                                  }
                                                                  §§goto(addr1192);
                                                               }
                                                               §§goto(addr1206);
                                                            }
                                                            else
                                                            {
                                                               buttons[_loc1_].but.MC.gotoAndStop("walk");
                                                               if(true)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr1192);
                                                         }
                                                         §§goto(addr1209);
                                                      }
                                                   }
                                                   §§goto(addr1206);
                                                }
                                                §§goto(addr529);
                                             }
                                             §§goto(addr1206);
                                          }
                                          §§goto(addr1128);
                                       }
                                       §§goto(addr1223);
                                    }
                                    else
                                    {
                                       §§push(UnitStats.unit[buttons[_loc1_].frame]);
                                       if(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(true)
                                             {
                                                §§pop();
                                                if(true)
                                                {
                                                   §§push(gold);
                                                   if(true)
                                                   {
                                                      §§push(§§pop() < UnitStats.unit[buttons[_loc1_].frame].cost);
                                                      if(true)
                                                      {
                                                         §§push(§§pop());
                                                         if(true)
                                                         {
                                                         }
                                                         §§goto(addr1110);
                                                      }
                                                      §§goto(addr1124);
                                                   }
                                                   §§goto(addr1102);
                                                }
                                                §§goto(addr1178);
                                             }
                                             §§goto(addr1126);
                                          }
                                          if(!§§pop())
                                          {
                                             if(true)
                                             {
                                                §§pop();
                                                if(true)
                                                {
                                                   §§push(UnitStats.spell[buttons[_loc1_].frame]);
                                                   if(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(true)
                                                         {
                                                            §§pop();
                                                            if(true)
                                                            {
                                                               §§push(gold);
                                                               if(true)
                                                               {
                                                                  §§push(§§pop() < UnitStats.spell[buttons[_loc1_].frame].cost);
                                                                  if(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(true)
                                                                     {
                                                                     }
                                                                     §§goto(addr907);
                                                                  }
                                                                  §§goto(addr911);
                                                               }
                                                               §§goto(addr1100);
                                                            }
                                                            §§goto(addr1141);
                                                         }
                                                         §§goto(addr987);
                                                      }
                                                   }
                                                   §§goto(addr1076);
                                                }
                                                §§goto(addr1146);
                                             }
                                             §§goto(addr1109);
                                          }
                                          if(§§pop())
                                          {
                                             if(true)
                                             {
                                                this["but" + _loc1_].bg.gotoAndStop(4);
                                                if(true)
                                                {
                                                   if(buttons[_loc1_].but.hitbox.hitTestPoint(game.mouseX,game.mouseY,false))
                                                   {
                                                      if(true)
                                                      {
                                                         buttons[_loc1_].but.desc.visible = true;
                                                         if(true)
                                                         {
                                                         }
                                                         §§goto(addr1114);
                                                      }
                                                      §§goto(addr1119);
                                                   }
                                                   §§goto(addr529);
                                                }
                                                §§goto(addr1126);
                                             }
                                             §§goto(addr1131);
                                          }
                                          else if(buttons[_loc1_].but.hitbox.hitTestPoint(game.mouseX,game.mouseY,false))
                                          {
                                             if(true)
                                             {
                                                buttons[_loc1_].but.desc.visible = true;
                                                if(true)
                                                {
                                                   if(buttons[_loc1_].but.bg.currentFrame != 2)
                                                   {
                                                      if(true)
                                                      {
                                                         buttons[_loc1_].but.bg.gotoAndStop(2);
                                                         if(true)
                                                         {
                                                         }
                                                         §§goto(addr1101);
                                                      }
                                                      §§goto(addr1104);
                                                   }
                                                   §§push(frameCounter);
                                                   if(true)
                                                   {
                                                      §§push(§§pop() % 3);
                                                      if(true)
                                                      {
                                                         if(§§pop() == 0)
                                                         {
                                                            if(true)
                                                            {
                                                               if(buttons[_loc1_].but.MC)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     if(buttons[_loc1_].but.MC.currentFrame != buttons[_loc1_].but.MC.totalFrames)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           buttons[_loc1_].but.MC.nextFrame();
                                                                           if(true)
                                                                           {
                                                                           }
                                                                           §§goto(addr1051);
                                                                        }
                                                                        §§goto(addr1075);
                                                                     }
                                                                     else
                                                                     {
                                                                        buttons[_loc1_].but.MC.gotoAndStop("walk");
                                                                        if(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     §§goto(addr1022);
                                                                  }
                                                                  §§goto(addr1077);
                                                               }
                                                            }
                                                            §§goto(addr1097);
                                                         }
                                                         addr512:
                                                         if(buttons[_loc1_].frame == "pause")
                                                         {
                                                            if(true)
                                                            {
                                                               buttons[_loc1_].but.desc.visible = false;
                                                               if(true)
                                                               {
                                                               }
                                                               §§goto(addr930);
                                                            }
                                                            §§goto(addr940);
                                                         }
                                                         §§goto(addr529);
                                                      }
                                                      §§goto(addr1192);
                                                   }
                                                   §§goto(addr1098);
                                                }
                                                else
                                                {
                                                   §§goto(addr1107);
                                                }
                                             }
                                             §§goto(addr1110);
                                          }
                                          else
                                          {
                                             buttons[_loc1_].but.bg.gotoAndStop(1);
                                             if(true)
                                             {
                                                if(buttons[_loc1_].but.MC)
                                                {
                                                   if(true)
                                                   {
                                                      buttons[_loc1_].but.MC.gotoAndStop("walk");
                                                      if(true)
                                                      {
                                                      }
                                                      §§goto(addr973);
                                                   }
                                                   §§goto(addr986);
                                                }
                                                §§goto(addr512);
                                             }
                                          }
                                          §§goto(addr988);
                                       }
                                    }
                                    §§goto(addr1124);
                                 }
                                 §§goto(addr1241);
                              }
                              §§goto(addr1226);
                           }
                        }
                        §§goto(addr1247);
                     }
                     else
                     {
                        buttons[_loc1_].but.cdcover.height = 0;
                        if(true)
                        {
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr1233);
                  }
               }
               return;
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop();
            §§goto(addr881);
         }
      }
      
      public function heal(param1:Number) : void
      {
         if(true)
         {
            curHp += maxHp * param1;
            if(true)
            {
               if(curHp > maxHp)
               {
                  curHp = maxHp;
               }
            }
            setHpBar(mc_hpbar1,curHp,maxHp);
         }
      }
      
      private function setPopupStatus() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = 1;
         while(_loc1_ <= 3)
         {
            if(popup["but" + _loc1_].currentLabel == "locked")
            {
               if(false)
               {
                  break;
               }
               popup["but" + _loc1_].bg.gotoAndStop(1);
               if(false)
               {
                  continue;
               }
            }
            else if(gold < uint(popup["cost" + _loc1_].text))
            {
               if(true)
               {
                  popup["but" + _loc1_].bg.gotoAndStop(4);
                  if(false)
                  {
                     addr89:
                  }
               }
            }
            else if(popup["but" + _loc1_].hitbox.hitTestPoint(game.mouseX,game.mouseY,false))
            {
               popup["but" + _loc1_].bg.gotoAndStop(2);
               §§goto(addr89);
            }
            else
            {
               popup["but" + _loc1_].bg.gotoAndStop(1);
            }
            _loc1_++;
         }
      }
   }
}

if(true)
{
   Hud = §§newclass(Hud,MovieClip);
}

