
{
   if(true)
   {
      Hud = §§newclass(Hud,MovieClip);
   }
}

package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="Hud")]
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
            unitAr.push(!!_loc2_.ability ? "s_defense" : "locked");
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
                     unitAr.push(!!_loc2_.general ? SD.race + "_general" : "locked");
                     buttons = new Array(10);
                     §§push(0);
                     if(true)
                     {
                        _loc3_ = §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_);
                           addr337:
                           addr335:
                           while(true)
                           {
                              §§push(10);
                              addr338:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    break loop1;
                                 }
                                 §§push(_loc3_);
                                 if(true)
                                 {
                                    if((_loc4_ = §§pop() >= unitAr.length ? "locked" : String(unitAr[_loc3_])) == "blank")
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
                                    §§push(_loc3_);
                                    while(true)
                                    {
                                       §§push(9);
                                    }
                                    addr227:
                                 }
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
                           }
                           addr335:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop1;
                           }
                        }
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
                     }
                     §§goto(addr227);
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
                        §§goto(addr335);
                     }
                  }
                  §§goto(addr337);
               }
               §§goto(addr338);
            }
            break;
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
                     if(true)
                     {
                        addr43:
                        if(buttons[param1].frame == "pause")
                        {
                           if(true)
                           {
                              return;
                           }
                        }
                        else
                        {
                           if(!checkIsSpell(buttons[param1].frame))
                           {
                              buttons[param1].but.desc.txt_name.text = UnitStats.unit[buttons[param1].frame].name;
                              buttons[param1].but.desc.txt_desc.text = UnitStats.unit[buttons[param1].frame].desc2;
                              addr129:
                              return;
                              addr107:
                           }
                           §§goto(addr129);
                        }
                        buttons[param1].but.desc.txt_name.text = UnitStats.spell[buttons[param1].frame].name;
                     }
                     buttons[param1].but.desc.txt_desc.text = UnitStats.spell[buttons[param1].frame].desc2;
                     addr91:
                     §§goto(addr129);
                  }
                  §§goto(addr43);
               }
               §§goto(addr91);
            }
            §§goto(addr107);
         }
         §§goto(addr129);
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
                     if(true)
                     {
                        addr37:
                        if(popup["but" + param1].bg.currentFrame == 4)
                        {
                           if(true)
                           {
                              return;
                           }
                           addr114:
                           popActive = false;
                        }
                        else
                        {
                           holdUnit = null;
                           if(true)
                           {
                              SH.playSound(S_Click);
                              if(true)
                              {
                                 addr64:
                                 if(checkIsSpell(selBut.currentLabel))
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
                                          addr93:
                                          selBut = null;
                                       }
                                       §§goto(addr93);
                                    }
                                    selPop = param1;
                                    §§goto(addr99);
                                 }
                                 else
                                 {
                                    holdUnit = UnitStats.unit[selBut.currentLabel];
                                 }
                                 §§goto(addr93);
                              }
                              addr99:
                              popGo.y = popBot;
                              §§goto(addr102);
                           }
                           addr102:
                           §§goto(addr110);
                        }
                        §§goto(addr99);
                     }
                     MouseDown();
                     §§goto(addr99);
                  }
                  §§goto(addr64);
               }
               §§goto(addr37);
            }
            addr110:
            if(clickedDefense)
            {
               clickedDefense = false;
               §§goto(addr114);
            }
            return;
         }
         §§goto(addr99);
      }
      
      private function getUnitDistance(param1:uint) : Number
      {
         §§push(placeAmt * (20 + 10));
         if(true)
         {
            §§push(0.5);
            if(true)
            {
               §§goto(addr47);
            }
            §§goto(addr44);
         }
         addr47:
         §§push(§§pop() * §§pop());
         if(true)
         {
            addr44:
            §§push(-§§pop() + (param1 + 1) * (20 + 10));
         }
         return §§pop() - 10;
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
               setButFrame(_loc1_,_loc1_ >= unitAr.length ? "locked" : String(unitAr[_loc1_]));
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
               if(true)
               {
                  addr31:
                  if(!checkIsSpell(holdUnit.id))
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
                                       addr149:
                                       if(§§pop())
                                       {
                                          if(true)
                                          {
                                             placeAmt *= popGo.upgrade["upMod" + selPop];
                                             if(true)
                                             {
                                                addr164:
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
                                                            addr192:
                                                            §§push(mouseY + _loc4_ < game.background.placeBot);
                                                         }
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                   _loc1_ = §§pop();
                                                   §§goto(addr201);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr201);
                                          }
                                          else
                                          {
                                             addr210:
                                             §§goto(addr223);
                                             §§push(mouseY < game.background.placeBot);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr164);
                                    }
                                    else
                                    {
                                       addr207:
                                       if(§§pop())
                                       {
                                          addr209:
                                          §§pop();
                                       }
                                       §§goto(addr210);
                                    }
                                 }
                                 §§goto(addr223);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr210);
                     }
                  }
                  else
                  {
                     §§push(mouseY > game.background.placeTop);
                  }
                  §§goto(addr207);
               }
               addr47:
               _loc2_ = 0;
               §§goto(addr50);
            }
            §§goto(addr31);
         }
         addr50:
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
                        if(true)
                        {
                           addr126:
                           if(!§§pop())
                           {
                              if(false)
                              {
                                 addr229:
                                 _loc1_ = true;
                                 addr228:
                              }
                              else
                              {
                                 addr201:
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
                                 if(true)
                                 {
                                    addr86:
                                    if(UT.inBox(mouseX,mouseY,_loc3_.MC.x - 30,_loc3_.MC.y - 20,60,40))
                                    {
                                       if(true)
                                       {
                                          _loc1_ = true;
                                       }
                                       selMineBox = _loc3_;
                                    }
                                 }
                                 §§push(_loc2_);
                                 if(true)
                                 {
                                    §§push(uint(§§pop() + 1));
                                 }
                                 _loc2_ = §§pop();
                                 continue;
                              }
                              §§goto(addr86);
                           }
                        }
                        else
                        {
                           addr223:
                           _loc1_ = §§pop();
                           if(holdUnit.id == "s_defense")
                           {
                              §§goto(addr228);
                           }
                        }
                     }
                     addr230:
                     §§push(_loc1_);
                     break;
                  }
                  §§goto(addr229);
               }
               §§goto(addr126);
            }
            break;
         }
         return §§pop();
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
                     game.createUnit(0,0,mouseY + _loc2_,holdUnit.id,selPop > 1 ? String(SD.upgrades[holdUnit.id]["up" + selPop]) : "blank",selPop,_loc3_);
                     _loc1_++;
                  }
                  SH.playSound(S_Place);
                  buttons[popGo.i].cdCur = buttons[popGo.i].cdMax;
                  addr260:
                  holdUnit = null;
                  §§push(0);
                  if(true)
                  {
                     _loc1_ = §§pop();
                     loop1:
                     while(true)
                     {
                        §§push(_loc1_);
                        §§push(10);
                        if(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              continue;
                           }
                           clickedDefense = false;
                           §§push(popActive);
                           if(true)
                           {
                              if(§§pop())
                              {
                                 addr302:
                                 _loc1_ = 1;
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    break loop1;
                                 }
                                 addr326:
                              }
                              §§goto(addr329);
                           }
                           §§goto(addr349);
                        }
                        break;
                     }
                     while(§§pop() <= §§pop())
                     {
                        if(popup["but" + _loc1_].hitbox.hitTestPoint(game.mouseX,game.mouseY,false))
                        {
                           clickPopup(_loc1_);
                        }
                        _loc1_++;
                        §§goto(addr326);
                     }
                     addr329:
                     if(but9.hitTestPoint(mouseX,mouseY,false))
                     {
                        SH.playSound(S_Click);
                        §§push(game);
                        if(true)
                        {
                           addr349:
                           if(§§pop().pause)
                           {
                              §§push(game);
                           }
                           else
                           {
                              addr354:
                              game.pauseOn();
                              §§goto(addr355);
                           }
                           §§goto(addr355);
                        }
                        §§pop().pauseOff();
                     }
                     addr355:
                     return;
                  }
                  §§goto(addr302);
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
                     §§pop().createSpell(0,mouseX - game.background.offset,mouseY,holdUnit.id,selPop > 1 ? String(SD.upgrades[holdUnit.id]["up" + selPop]) : "blank",selPop);
                     buttons[popGo.i].cdCur = buttons[popGo.i].cdMax;
                     §§goto(addr256);
                  }
               }
               §§goto(addr354);
            }
            else
            {
               SH.playSound(S_Noplace);
            }
         }
         §§goto(addr260);
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
                     if(true)
                     {
                        §§pop();
                        if(true)
                        {
                           §§push(buttons[param1].frame == "pause");
                           if(true)
                           {
                              addr36:
                              §§push(§§pop());
                              if(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    if(true)
                                    {
                                       addr51:
                                       §§push(buttons[param1].cdCur);
                                       if(!buttons[param1].cdCur)
                                       {
                                          addr53:
                                          §§pop();
                                          if(true)
                                          {
                                             addr59:
                                             if(param1 > 8)
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
                                                                     §§goto(addr234);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr143:
                                                                     §§push(popGo);
                                                                     if(true)
                                                                     {
                                                                        §§pop().unit = UnitStats.spell[buttons[param1].frame];
                                                                        addr154:
                                                                        popGo.isSpell = true;
                                                                        addr170:
                                                                        buttons[param1].cdMax = popGo.unit.cooldown * 30;
                                                                        if(SD.upgrades[popGo.unit.id].up2)
                                                                        {
                                                                           addr188:
                                                                           popGo.upgrade = UnitStats.upgrades[SD.upgrades[popGo.unit.id].up2];
                                                                           addr234:
                                                                           return;
                                                                           addr187:
                                                                        }
                                                                        else
                                                                        {
                                                                           if(SD.upgrades[popGo.unit.id].up3)
                                                                           {
                                                                              popGo.upgrade = UnitStats.upgrades[SD.upgrades[popGo.unit.id].up3];
                                                                              addr227:
                                                                              §§goto(addr234);
                                                                              addr209:
                                                                              addr208:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(popGo);
                                                                           }
                                                                           §§goto(addr234);
                                                                        }
                                                                        §§goto(addr234);
                                                                        addr157:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr159:
                                                                        §§pop().unit = UnitStats.unit[buttons[param1].frame];
                                                                        popGo.isSpell = false;
                                                                        §§goto(addr170);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                               }
                                                               §§pop().upgrade = UnitStats.upgrades["blank"];
                                                               §§goto(addr234);
                                                            }
                                                            §§goto(addr154);
                                                         }
                                                         §§goto(addr157);
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
                                                                     addr131:
                                                                     §§push(popGo);
                                                                     if(true)
                                                                     {
                                                                        §§pop().i = param1;
                                                                        addr136:
                                                                        if(checkIsSpell(buttons[param1].frame))
                                                                        {
                                                                           §§goto(addr143);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(popGo);
                                                                        }
                                                                     }
                                                                     §§goto(addr159);
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               §§goto(addr209);
                                                            }
                                                            §§goto(addr131);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr154);
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr188);
                                       }
                                       §§goto(addr59);
                                    }
                                    §§goto(addr208);
                                 }
                              }
                              §§goto(addr51);
                           }
                           §§goto(addr53);
                        }
                        §§goto(addr227);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr36);
               }
               §§goto(addr51);
            }
            §§goto(addr136);
         }
         §§goto(addr234);
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
                                       if(true)
                                       {
                                          addr59:
                                          §§goto(addr82);
                                          §§push(popup["but" + 2].currentLabel != "locked" || popup["but" + 3].currentLabel != "locked");
                                       }
                                       §§goto(addr83);
                                    }
                                 }
                                 §§goto(addr59);
                              }
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr82);
               }
               §§goto(addr102);
            }
            else
            {
               clickButton(param1);
            }
         }
         §§goto(addr106);
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
                              if(true)
                              {
                                 §§push(game);
                                 if(true)
                                 {
                                    §§pop().base0.arch3.play();
                                    addr59:
                                    if(true)
                                    {
                                       §§push(game);
                                    }
                                    §§push(§§findproperty(curHp));
                                    §§push(curHp);
                                    if(true)
                                    {
                                       §§push(§§pop() - param1);
                                    }
                                    §§pop().curHp = §§pop();
                                    if(curHp <= 1)
                                    {
                                       curHp = 1;
                                       addr80:
                                       game.defeat();
                                       addr81:
                                       setHpBar(mc_hpbar1,curHp,maxHp);
                                       return;
                                       addr69:
                                       addr79:
                                    }
                                    §§goto(addr81);
                                 }
                                 §§pop().base0.arch4.play();
                                 addr56:
                                 game.base0.arch5.play();
                              }
                              §§goto(addr59);
                           }
                           §§goto(addr56);
                        }
                        §§goto(addr69);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr79);
               }
               §§goto(addr80);
            }
            §§goto(addr59);
         }
         §§goto(addr80);
      }
      
      public function addArcher() : void
      {
         §§push(defenseUp);
         if(true)
         {
            §§push(5);
            if(true)
            {
               if(§§pop() == §§pop())
               {
                  return;
               }
               var _loc1_:*;
               var _loc2_:* = (_loc1_ = §§findproperty(defenseUp)).defenseUp + 1;
               if(true)
               {
                  _loc1_.defenseUp = _loc2_;
               }
               game.base0["arch" + defenseUp].visible = true;
               addr53:
               §§push(defenseUp);
               §§push(5);
            }
            if(§§pop() == §§pop())
            {
               SD.upgrades.s_defense.up3 = null;
               updatePopup();
            }
            return;
         }
         §§goto(addr53);
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
                  addr125:
                  switch(true ? 0 : 9)
                  {
                     case 0:
                        clickUnit(0);
                        if(true)
                        {
                        }
                        break;
                     case 1:
                     case 2:
                     case 3:
                     case 4:
                     case 5:
                     case 6:
                     case 7:
                     case 8:
                        clickUnit(param1.keyCode - 48);
                        if(true)
                        {
                           break;
                        }
                        addr36:
                        break;
                     case 9:
                        clickUnit(10);
                        break;
                     case 10:
                        clickUnit(9);
                        §§goto(addr36);
                  }
                  return;
                  §§push(true ? 1 : 8);
               }
               else
               {
                  if(50 === _loc2_)
                  {
                     §§goto(addr125);
                     §§push(true ? 2 : 7);
                  }
                  else
                  {
                     if(51 === _loc2_)
                     {
                        §§goto(addr125);
                        §§push(true ? 3 : 6);
                     }
                     else
                     {
                        if(52 === _loc2_)
                        {
                           §§goto(addr125);
                           §§push(true ? 4 : 5);
                        }
                        else
                        {
                           if(53 === _loc2_)
                           {
                              §§goto(addr89);
                           }
                           else if(54 === _loc2_)
                           {
                              §§goto(addr94);
                           }
                           else if(55 === _loc2_)
                           {
                              §§goto(addr99);
                           }
                           else if(56 === _loc2_)
                           {
                              §§goto(addr104);
                           }
                           else if(48 === _loc2_)
                           {
                              §§goto(addr109);
                           }
                           else
                           {
                              §§push(57 === _loc2_ ? 10 : 11);
                           }
                           §§goto(addr125);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr99);
               }
               §§goto(addr104);
            }
         }
         §§goto(addr121);
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         var _loc2_:Boolean = false;
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
                  if(true)
                  {
                     addr54:
                     if(but_max.hitTestPoint(mouseX,mouseY,false))
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
                                 if(true)
                                 {
                                    addr89:
                                    §§push(but_ff.hitbox.hitTestPoint(mouseX,mouseY,false));
                                    if(!but_ff.hitbox.hitTestPoint(mouseX,mouseY,false))
                                    {
                                       §§pop();
                                       §§push(K.keys);
                                       if(true)
                                       {
                                          §§push(§§pop() & K.SPACE);
                                          if(true)
                                          {
                                             addr102:
                                             if(§§pop())
                                             {
                                                addr103:
                                                but_ff.gotoAndStop(2);
                                                addr113:
                                                if(game.fastfoward)
                                                {
                                                   addr116:
                                                   but_ff.gotoAndStop(3);
                                                   addr119:
                                                   §§push(0);
                                                }
                                                §§goto(addr119);
                                                addr106:
                                             }
                                             else
                                             {
                                                but_ff.gotoAndStop(1);
                                                addr110:
                                                game.fastfoward = false;
                                                §§goto(addr113);
                                             }
                                             §§goto(addr113);
                                          }
                                          §§push(§§pop());
                                       }
                                       _loc1_ = §§pop();
                                       addr122:
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
                                                                           game.background.npzTop.visible = game.background.npzBot.visible = false;
                                                                           addr621:
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
                                                                                                                        addr708:
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           if(true)
                                                                                                                           {
                                                                                                                              addr714:
                                                                                                                              _loc2_ = isPlacable();
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop());
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 loop33:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
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
                                                                                                                                                addr846:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   addr881:
                                                                                                                                                   addr887:
                                                                                                                                                   loop18:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc1_);
                                                                                                                                                      addr882:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(game);
                                                                                                                                                         addr883:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop().background.mines0.length)
                                                                                                                                                            {
                                                                                                                                                               break loop18;
                                                                                                                                                            }
                                                                                                                                                            addr856:
                                                                                                                                                            game.background.mines0[_loc1_].MC.visible = true;
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               game.background.mines0[_loc1_].MC.gotoAndStop(!!game.background.mines0[_loc1_].used ? 2 : 1);
                                                                                                                                                               addr875:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc1_);
                                                                                                                                                                  addr876:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + 1);
                                                                                                                                                                     if(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        continue loop18;
                                                                                                                                                                     }
                                                                                                                                                                     addr1226:
                                                                                                                                                                     addr1231:
                                                                                                                                                                     addr1201:
                                                                                                                                                                     addr1206:
                                                                                                                                                                     addr1220:
                                                                                                                                                                     addr1221:
                                                                                                                                                                     addr1207:
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
                                                                                                                                                                                          if(!(holdUnit.atkTyp & UnitStats.E))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(holdUnit.atkTyp & UnitStats.$);
                                                                                                                                                                                             continue loop33;
                                                                                                                                                                                          }
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
                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc4_ = §§pop();
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
                                                                                                                                                                                                                                                               if(true)
                                                                                                                                                                                                                                                               {
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
                                                                                                                                                                                                                                                                                 addr836:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr986:
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
                                                                                                                                                                                                                                                                                                                     addr1053:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(game.mouseX - holdUnit.offX);
                                                                                                                                                                                                                                                                                                                        addr1058:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(game);
                                                                                                                                                                                                                                                                                                                           addr1059:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop().background.offset);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
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
                                                                                                                                                                                                                                                                                                                  addr1049:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§pop().paintBox(§§pop(),§§pop(),§§pop(),§§pop(),4);
                                                                                                                                                                                                                                                                                                                     §§goto(addr1051);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr1040:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1049);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                                                                                                                                                                            §§push(game);
                                                                                                                                                                                                                                                                                                            addr1064:
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
                                                                                                                                                                                                                                                                                                                              addr1083:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(game);
                                                                                                                                                                                                                                                                                                                                 addr1084:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() - §§pop().background.offset);
                                                                                                                                                                                                                                                                                                                                    addr1087:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                                                                                                                                                                       §§push(game);
                                                                                                                                                                                                                                                                                                                                       addr1089:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§pop().paintObject(§§pop(),§§pop() + §§pop().mouseY - 60,BH.getBit("noplace"));
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr1077:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr1097:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc1_);
                                                                                                                                                                                                                                                                                                                        addr1098:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop17;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1089);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1049);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1084);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1083);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr1053);
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
                                                                                                                                                                                                                                                                                                §§goto(addr1059);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr1058);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr823:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1174:
                                                                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1171:
                                                                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1173:
                                                                                                                                                                                                                                                                              §§goto(addr1174);
                                                                                                                                                                                                                                                                              §§push(5);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1177:
                                                                                                                                                                                                                                                                              §§push(9);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().paintBox(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                                                                                        addr1179:
                                                                                                                                                                                                                                                                        game.background.npzTop.visible = game.background.npzBot.visible = true;
                                                                                                                                                                                                                                                                        break loop17;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1177);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1173);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1049);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1089);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1164:
                                                                                                                                                                                                                                                            §§push(§§pop() - _loc5_ / 2);
                                                                                                                                                                                                                                                            §§push(game.mouseY - _loc6_ / 2);
                                                                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1171);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1164);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1153:
                                                                                                                                                                                                                                                   §§push(game.mouseX - game.background.offset);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1164);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr779:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1114:
                                                                                                                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                                                                                                                             addr1118:
                                                                                                                                                                                                                                             _loc6_ = Number(holdUnit.rangeY);
                                                                                                                                                                                                                                             addr1121:
                                                                                                                                                                                                                                             addr1119:
                                                                                                                                                                                                                                             addr1124:
                                                                                                                                                                                                                                             addr1130:
                                                                                                                                                                                                                                             if(popGo.upgrade.id == "range" && selPop > 1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1140:
                                                                                                                                                                                                                                                _loc5_ *= popGo.upgrade["upMod" + selPop];
                                                                                                                                                                                                                                                _loc6_ *= popGo.upgrade["upMod" + selPop];
                                                                                                                                                                                                                                                addr1146:
                                                                                                                                                                                                                                                addr1132:
                                                                                                                                                                                                                                                addr1139:
                                                                                                                                                                                                                                                addr1136:
                                                                                                                                                                                                                                                addr1135:
                                                                                                                                                                                                                                                addr1131:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(game.screen);
                                                                                                                                                                                                                                             addr1115:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1153);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1118);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1146);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1132);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr759:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr779);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr754:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr758);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr752:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1121);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr745:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1139);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr733:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1140);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     goldShow += (gold - goldShow) * 0.2;
                                                                                                                                                                     goldShow = Math.round(goldShow);
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
                                                                                                                                                                        addr1266:
                                                                                                                                                                        return;
                                                                                                                                                                        addr1247:
                                                                                                                                                                        addr1262:
                                                                                                                                                                     }
                                                                                                                                                                     txt_custom2.text = "";
                                                                                                                                                                     §§goto(addr1266);
                                                                                                                                                                     §§goto(addr1266);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr986);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr843:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(Number(holdUnit.rangeX));
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          _loc5_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(holdUnit.rangeY));
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                addr899:
                                                                                                                                                _loc6_ = §§pop();
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(popGo.upgrade.id == "range");
                                                                                                                                                   addr905:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr908:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(selPop);
                                                                                                                                                               addr909:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > 1);
                                                                                                                                                               }
                                                                                                                                                            }
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
                                                                                                                                                                           addr931:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * popGo.upgrade["upMod" + selPop]);
                                                                                                                                                                              addr938:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 addr939:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                                                                    addr940:
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
                                                                                                                                                                                             if(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop().mouseY - _loc6_);
                                                                                                                                                                                                §§push(_loc5_);
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                if(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(2);
                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr971:
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().paintBox(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      game.background.npzTop.visible = game.background.npzBot.visible = true;
                                                                                                                                                                                                      §§goto(addr986);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr973:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr971);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1064);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr1087);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1079);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr899);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr930:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1136);
                                                                                                                                                                  }
                                                                                                                                                                  break loop2;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr931);
                                                                                                                                                            }
                                                                                                                                                            addr912:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr940);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1135);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr900:
                                                                                                                                             }
                                                                                                                                             §§goto(addr938);
                                                                                                                                          }
                                                                                                                                          addr894:
                                                                                                                                       }
                                                                                                                                       §§goto(addr939);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1079);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr1101);
                                                                                                                           }
                                                                                                                           §§goto(addr733);
                                                                                                                        }
                                                                                                                        else if(holdUnit)
                                                                                                                        {
                                                                                                                           addr1110:
                                                                                                                           _loc2_ = isPlacable();
                                                                                                                           addr1111:
                                                                                                                           §§goto(addr1114);
                                                                                                                           §§push(Number(holdUnit.rangeX));
                                                                                                                           addr1107:
                                                                                                                           addr1109:
                                                                                                                        }
                                                                                                                        §§goto(addr1192);
                                                                                                                     }
                                                                                                                     §§goto(addr714);
                                                                                                                  }
                                                                                                                  §§goto(addr752);
                                                                                                               }
                                                                                                               §§goto(addr739);
                                                                                                            }
                                                                                                            §§goto(addr754);
                                                                                                         }
                                                                                                         §§goto(addr708);
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
                                                                                                         §§goto(addr1140);
                                                                                                      }
                                                                                                      §§goto(addr845);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr759);
                                                                                             }
                                                                                             §§goto(addr883);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       _loc1_ = §§pop();
                                                                                       §§goto(addr714);
                                                                                    }
                                                                                    §§goto(addr779);
                                                                                 }
                                                                                 §§goto(addr876);
                                                                              }
                                                                              §§goto(addr844);
                                                                           }
                                                                           §§goto(addr823);
                                                                        }
                                                                        §§goto(addr836);
                                                                     }
                                                                     §§goto(addr843);
                                                                  }
                                                                  §§goto(addr621);
                                                               }
                                                               §§goto(addr905);
                                                            }
                                                            §§goto(addr846);
                                                         }
                                                         §§goto(addr894);
                                                      }
                                                      §§goto(addr900);
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
                                                                     §§goto(addr601);
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
                                                   §§goto(addr887);
                                                }
                                                §§goto(addr908);
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
                                                         var _loc7_:*;
                                                         var _loc8_:* = (_loc7_ = buttons[_loc1_]).cdCur - 1;
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
                                                                              §§goto(addr1140);
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
                                                                                                   addr274:
                                                                                                   §§goto(addr529);
                                                                                                }
                                                                                                §§goto(addr1201);
                                                                                             }
                                                                                             §§goto(addr1206);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             buttons[_loc1_].but.MC.gotoAndStop("walk");
                                                                                             if(true)
                                                                                             {
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr1226);
                                                                                       }
                                                                                       §§goto(addr1209);
                                                                                    }
                                                                                    §§goto(addr274);
                                                                                 }
                                                                                 §§goto(addr1220);
                                                                              }
                                                                              §§goto(addr274);
                                                                           }
                                                                           §§goto(addr1221);
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
                                                                                          addr311:
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
                                                                                                                        addr354:
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
                                                                                                                                          addr390:
                                                                                                                                          §§goto(addr529);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1115);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1119);
                                                                                                                                 }
                                                                                                                                 §§goto(addr390);
                                                                                                                              }
                                                                                                                              §§goto(addr1128);
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
                                                                                                                                          addr433:
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
                                                                                                                                                                     addr485:
                                                                                                                                                                     if(buttons[_loc1_].frame == "pause")
                                                                                                                                                                     {
                                                                                                                                                                        if(true)
                                                                                                                                                                        {
                                                                                                                                                                           buttons[_loc1_].but.desc.visible = false;
                                                                                                                                                                           if(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr529);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr930);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr940);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr529);
                                                                                                                                                                     addr485:
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
                                                                                                                                                                  §§goto(addr485);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1022);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1077);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr485);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1097);
                                                                                                                                                }
                                                                                                                                                §§goto(addr485);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1207);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1098);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1101);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1104);
                                                                                                                                 }
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr1107);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1111);
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
                                                                                                                                       §§goto(addr485);
                                                                                                                                    }
                                                                                                                                    §§goto(addr973);
                                                                                                                                 }
                                                                                                                                 §§goto(addr986);
                                                                                                                              }
                                                                                                                              §§goto(addr485);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr988);
                                                                                                                     }
                                                                                                                     §§goto(addr907);
                                                                                                                  }
                                                                                                                  §§goto(addr911);
                                                                                                               }
                                                                                                               §§goto(addr1100);
                                                                                                            }
                                                                                                            §§goto(addr1140);
                                                                                                         }
                                                                                                         §§goto(addr987);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr1076);
                                                                                                }
                                                                                                §§goto(addr1114);
                                                                                             }
                                                                                             §§goto(addr1109);
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                       §§goto(addr1110);
                                                                                    }
                                                                                    §§goto(addr1124);
                                                                                 }
                                                                                 §§goto(addr1102);
                                                                              }
                                                                              §§goto(addr1179);
                                                                           }
                                                                           §§goto(addr1126);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                  }
                                                                  §§goto(addr1130);
                                                               }
                                                               §§goto(addr1241);
                                                            }
                                                            §§goto(addr1226);
                                                         }
                                                         §§goto(addr1247);
                                                      }
                                                      §§goto(addr1262);
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
                                             §§goto(addr1266);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          §§goto(addr881);
                                       }
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr103);
                     }
                     else
                     {
                        but_max.alpha = 0.6;
                        if(true)
                        {
                           §§goto(addr68);
                        }
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr116);
               }
               §§goto(addr54);
            }
            §§goto(addr116);
         }
         §§goto(addr122);
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
