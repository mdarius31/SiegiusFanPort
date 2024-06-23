package
{
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="Roster")]
   public class Roster extends MovieClip
   {
       
      
      public var bar_health:MovieClip;
      
      public var txt_resmagic:TextField;
      
      public var txt_special:TextField;
      
      public var txt_stats:TextField;
      
      public var bar_range:MovieClip;
      
      public var but_drag:MovieClip;
      
      public var txt_cost:TextField;
      
      public var but_base2:MovieClip;
      
      public var but_base3:MovieClip;
      
      public var but_base0:MovieClip;
      
      public var txt_upgb3_stat:TextField;
      
      public var txt_resranged:TextField;
      
      public var txt_cooldown:TextField;
      
      public var but_base1:MovieClip;
      
      public var txt_upg_title:TextField;
      
      public var cloud0:MovieClip;
      
      public var cloud2:MovieClip;
      
      public var cloud4:MovieClip;
      
      public var cloud1:MovieClip;
      
      public var cloud3:MovieClip;
      
      public var mc_appearance:MovieClip;
      
      public var txt_upgb_title:TextField;
      
      public var txt_upgrades:TextField;
      
      public var bt_back:TextField;
      
      public var txt_upg2_cost:TextField;
      
      public var previewImg:MovieClip;
      
      private var clouds:Array;
      
      private var nextClip:*;
      
      public var but_upgb2:MovieClip;
      
      public var but_upgb3:MovieClip;
      
      public var txt_desc:TextField;
      
      public var txt_name:TextField;
      
      private var lastOn:*;
      
      public var but_hud0:MovieClip;
      
      public var but_hud2:MovieClip;
      
      public var but_hud3:MovieClip;
      
      public var but_hud4:MovieClip;
      
      public var but_hud5:MovieClip;
      
      private var rosButs:Array;
      
      public var bar_speed:MovieClip;
      
      public var txt_upgb2_cost:TextField;
      
      public var but_hud6:MovieClip;
      
      public var but_hud1:MovieClip;
      
      private var upButs:Array;
      
      private var mouseOn:*;
      
      public var txt_upg2_stat:TextField;
      
      public var txt_upg3_cost:TextField;
      
      private var mouseDrag:Boolean;
      
      private var buttons:Array;
      
      public var but_upg2:MovieClip;
      
      public var but_upg3:MovieClip;
      
      public var but_spell1:MovieClip;
      
      public var but_spell3:MovieClip;
      
      public var but_spell2:MovieClip;
      
      public var bt_select:TextField;
      
      public var but_spell0:MovieClip;
      
      public var txt_upgb2_stat:TextField;
      
      public var txt_type:TextField;
      
      private var hudButs:Array;
      
      public var hudBar:MovieClip;
      
      public var main:Main;
      
      public var txt_upgb3_cost:TextField;
      
      public var txt_resmelee:TextField;
      
      public var startMsg:MovieClip;
      
      public var txt_exp:TextField;
      
      public var bar_power:MovieClip;
      
      public var but_unit0:MovieClip;
      
      public var but_unit1:MovieClip;
      
      public var but_unit2:MovieClip;
      
      public var but_unit3:MovieClip;
      
      public var but_unit4:MovieClip;
      
      public var but_unit5:MovieClip;
      
      public var but_unit6:MovieClip;
      
      public var but_unit7:MovieClip;
      
      public var txt_upg3_stat:TextField;
      
      public function Roster(param1:Main, param2:Object)
      {
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:Object = null;
         super();
         addFrameScript(0,frame1,1,frame2,2,frame3);
         main = param1;
         buttons = new Array("bt_back","bt_select","txt_upgrades","txt_stats");
         rosButs = new Array();
         hudBar.gotoAndStop(GameStats.getRaceStats(SD.race).bar + 1);
         clouds = new Array();
         if(!param2.useClouds)
         {
            _loc4_ = 0;
            loop1:
            while(true)
            {
               §§push(_loc4_);
               if(true)
               {
                  if(§§pop() >= 5)
                  {
                     if(true)
                     {
                        addr167:
                        if(param2.midStart)
                        {
                           addr170:
                           y = -800;
                        }
                        addr173:
                        upButs = new Array("but_upg2","but_upgb2","but_upg3","but_upgb3");
                        addr181:
                        previewImg.gotoAndStop(1);
                        addr184:
                        previewImg.bgcolor.visible = false;
                        previewImg.bg.visible = false;
                     }
                     but_drag.gotoAndStop(1);
                     addr195:
                     but_drag.bgcolor.visible = false;
                     but_drag.bg.visible = false;
                  }
                  else
                  {
                     this["cloud" + _loc4_].x = -500 + Math.random() * (1000 + 700);
                     if(true)
                     {
                        clouds.push({
                           "MC":this["cloud" + _loc4_],
                           "spd":Math.random() * 1.5 + 0.3
                        });
                        if(true)
                        {
                           §§push(_loc4_);
                           if(true)
                           {
                              §§push(§§pop() + 1);
                              if(true)
                              {
                                 §§push(§§pop());
                                 if(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(true)
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc4_ = §§pop();
                                       if(true)
                                       {
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             addr163:
                                             while(true)
                                             {
                                                if(§§pop() < 5)
                                                {
                                                   this["cloud" + _loc4_].x = param2.useClouds[_loc4_].MC.x;
                                                   if(true)
                                                   {
                                                      clouds.push({
                                                         "MC":this["cloud" + _loc4_],
                                                         "spd":param2.useClouds[_loc4_].spd
                                                      });
                                                      if(true)
                                                      {
                                                         §§push(_loc4_);
                                                         break loop1;
                                                      }
                                                      §§goto(addr181);
                                                   }
                                                   break loop0;
                                                }
                                                if(true)
                                                {
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr170);
                                                §§goto(addr167);
                                             }
                                          }
                                          §§goto(addr184);
                                          addr162:
                                       }
                                       §§goto(addr173);
                                    }
                                    addr159:
                                 }
                                 §§goto(addr195);
                              }
                              while(true)
                              {
                                 §§goto(addr159);
                              }
                              §§goto(addr167);
                              addr158:
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr195);
                     }
                  }
                  _loc3_ = GameStats.getUnitOrder(SD.race);
                  §§push(0);
                  if(true)
                  {
                     _loc4_ = §§pop();
                     while(true)
                     {
                        §§push(_loc4_);
                        addr277:
                        _loc4_ = §§pop();
                     }
                     addr278:
                  }
                  while(§§pop() < 8)
                  {
                     §§push(_loc4_);
                     if(true)
                     {
                        if(§§pop() < _loc3_.length)
                        {
                           §§push(_loc4_);
                           if(true)
                           {
                              if(§§pop() < SD.unlockUnit)
                              {
                                 this["but_unit" + _loc4_].gotoAndStop(_loc3_[_loc4_]);
                                 rosButs.push(this["but_unit" + _loc4_]);
                              }
                              else
                              {
                                 this["but_unit" + _loc4_].gotoAndStop("locked");
                              }
                              addr274:
                              §§push(_loc4_);
                           }
                           §§goto(addr277);
                           §§push(uint(§§pop() + 1));
                        }
                        else
                        {
                           this["but_unit" + _loc4_].gotoAndStop("blank");
                           this["but_unit" + _loc4_].visible = false;
                        }
                        §§goto(addr274);
                     }
                     §§goto(addr277);
                     §§goto(addr278);
                  }
                  setUnitStats(but_unit0);
                  _loc3_ = GameStats.getSpellOrder(SD.race);
                  if(true)
                  {
                     _loc4_ = 0;
                     if(true)
                     {
                     }
                     for(; _loc4_ < 4; _loc4_++)
                     {
                        if(_loc4_ < _loc3_.length)
                        {
                           if(true)
                           {
                              if(_loc4_ < SD.unlockSpell)
                              {
                                 if(false)
                                 {
                                    addr345:
                                    this["but_spell" + _loc4_].visible = false;
                                    continue;
                                 }
                                 this["but_spell" + _loc4_].gotoAndStop(_loc3_[_loc4_]);
                                 if(true)
                                 {
                                    rosButs.push(this["but_spell" + _loc4_]);
                                 }
                              }
                              else
                              {
                                 this["but_spell" + _loc4_].gotoAndStop("locked");
                              }
                           }
                           continue;
                        }
                        this["but_spell" + _loc4_].gotoAndStop("blank");
                        §§goto(addr345);
                     }
                  }
                  _loc5_ = GameStats.getCampaignStats(SD.race,SD.picStage);
                  hudButs = new Array();
                  _loc4_ = 0;
                  loop5:
                  while(true)
                  {
                     if(_loc4_ < _loc5_.unitMax)
                     {
                        continue;
                     }
                     _loc4_ = 0;
                     loop6:
                     while(true)
                     {
                        if(_loc4_ < _loc5_.spellMax)
                        {
                           continue;
                        }
                        _loc4_ = 0;
                        loop7:
                        while(true)
                        {
                           §§push(_loc4_);
                           §§push(7);
                           if(false)
                           {
                              break;
                           }
                           if(§§pop() >= §§pop())
                           {
                              if(SD.army.length)
                              {
                                 _loc4_ = 0;
                                 addr522:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    break loop7;
                                 }
                                 addr522:
                              }
                              §§goto(addr525);
                           }
                           this["but_hud" + _loc4_].gotoAndStop(hudButs[_loc4_]);
                           §§push(_loc4_ + 1);
                           break loop6;
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              addr525:
                              txt_exp.text = "" + SD.exp;
                              return;
                           }
                           §§push(SD.army[_loc4_] == "blank");
                           if(true)
                           {
                              §§push(!§§pop());
                              if(true)
                              {
                                 §§push(§§pop());
                                 if(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(true)
                                       {
                                          §§pop();
                                          §§push(SD.army[_loc4_] != "locked");
                                       }
                                    }
                                    §§push(§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                 }
                                 addr493:
                                 if(§§pop())
                                 {
                                    hudButs[_loc4_] = SD.army[_loc4_];
                                    this["but_hud" + _loc4_].gotoAndStop(SD.army[_loc4_]);
                                 }
                                 §§push(_loc4_ + 1);
                                 break loop5;
                              }
                              §§pop();
                              §§push(this["but_hud" + _loc4_].currentLabel == "blank");
                           }
                           §§goto(addr493);
                           §§goto(addr522);
                        }
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr443);
                     }
                  }
                  while(true)
                  {
                     _loc4_ = §§pop();
                     §§goto(addr522);
                  }
               }
               break;
            }
            while(true)
            {
               §§goto(addr158);
            }
         }
         else
         {
            _loc4_ = 0;
            if(true)
            {
               §§goto(addr162);
            }
         }
         §§goto(addr167);
      }
      
      public function MouseUp() : void
      {
         var _loc1_:uint = 0;
         if(true)
         {
            if(mouseOn)
            {
               var _loc2_:* = mouseOn.name.charAt(4);
               if("u" === _loc2_)
               {
                  §§push(0);
                  if(true)
                  {
                  }
               }
               else
               {
                  §§push("s" === _loc2_ ? 1 : 2);
               }
               loop0:
               while(true)
               {
                  loop8:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(0);
                        if(true)
                        {
                           _loc1_ = §§pop();
                           if(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 §§push(5);
                                 if(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(true)
                                       {
                                          break loop8;
                                       }
                                       addr118:
                                       while(true)
                                       {
                                          this["but_hud" + _loc1_].gotoAndStop(mouseOn.currentLabel);
                                          addr126:
                                          while(true)
                                          {
                                             §§push(_loc1_ + 1);
                                          }
                                       }
                                    }
                                    else
                                    {
                                       if(this["but_hud" + _loc1_].hitbox.hitTestPoint(mouseX,mouseY,false))
                                       {
                                          if(true)
                                          {
                                             if(hudButs[_loc1_] == "locked")
                                             {
                                                if(true)
                                                {
                                                   addr65:
                                                   §§push(_loc1_ + 1);
                                                   if(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      if(true)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr126);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc1_ = §§pop();
                                                      addr130:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         break loop4;
                                                      }
                                                   }
                                                   addr128:
                                                }
                                                break loop8;
                                             }
                                             hudButs[_loc1_] = mouseOn.currentLabel;
                                             if(true)
                                             {
                                                this["but_hud" + _loc1_].gotoAndStop(mouseOn.currentLabel);
                                                if(true)
                                                {
                                                   §§goto(addr65);
                                                }
                                                §§goto(addr130);
                                             }
                                             addr133:
                                             break loop8;
                                          }
                                          addr167:
                                          mouseDrag = false;
                                          break loop0;
                                       }
                                       §§goto(addr65);
                                    }
                                    §§goto(addr128);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(this["but_hud" + _loc1_].hitbox.hitTestPoint(mouseX,mouseY,false))
                                    {
                                       if(hudButs[_loc1_] == "locked")
                                       {
                                          while(true)
                                          {
                                          }
                                          addr112:
                                       }
                                       else
                                       {
                                          hudButs[_loc1_] = mouseOn.currentLabel;
                                          §§goto(addr118);
                                       }
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr133);
                              }
                           }
                           break loop0;
                        }
                        continue;
                     case 1:
                        _loc1_ = 5;
                        if(true)
                        {
                           §§goto(addr130);
                        }
                        §§goto(addr112);
                  }
               }
               return;
               addr16:
            }
            mouseOn = null;
            §§goto(addr167);
         }
         §§goto(addr16);
      }
      
      internal function frame2() : *
      {
         setUnitUpgrades();
      }
      
      internal function frame3() : *
      {
         MouseDown();
         setUnitStats();
      }
      
      internal function frame1() : *
      {
         if(true)
         {
            stop();
            if(true)
            {
               MouseDown();
            }
            setUnitStats();
         }
      }
      
      public function MouseDown() : void
      {
         var _loc1_:* = 0;
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         var _loc5_:Boolean = false;
         if(true)
         {
            if(startMsg.currentLabel == "error")
            {
               if(true)
               {
                  if(startMsg.txt_okay.hitTestPoint(mouseX,mouseY,false))
                  {
                     if(true)
                     {
                        startMsg.gotoAndStop(1);
                     }
                     else
                     {
                        §§goto(addr44);
                     }
                  }
                  return;
               }
               §§goto(addr47);
            }
            addr44:
            if(currentFrame == 2)
            {
               addr47:
               _loc1_ = 0;
               while(true)
               {
                  if(_loc1_ < upButs.length)
                  {
                     §§push(!this[upButs[_loc1_]]);
                     if(true)
                     {
                        if(!§§pop())
                        {
                           if(true)
                           {
                              §§pop();
                              addr73:
                              §§push(this[upButs[_loc1_]].currentLabel == "locked");
                              if(this[upButs[_loc1_]].currentLabel == "locked")
                              {
                              }
                              addr85:
                              if(!§§pop())
                              {
                                 if(this[upButs[_loc1_]].hitbox.hitTestPoint(mouseX,mouseY,false))
                                 {
                                    if(lastOn.name.charAt(4) == "u")
                                    {
                                       switch(upButs[_loc1_])
                                       {
                                          case "but_upg2":
                                             _loc2_ = uint(UnitStats.unit[lastOn.currentLabel].upExp2);
                                             break;
                                          case "but_upg3":
                                             _loc2_ = uint(UnitStats.unit[lastOn.currentLabel].upExp3);
                                             break;
                                          case "but_upgb2":
                                             _loc2_ = uint(UnitStats.unit[lastOn.currentLabel].upbExp2);
                                             break;
                                          case "but_upgb3":
                                             _loc2_ = uint(UnitStats.unit[lastOn.currentLabel].upbExp3);
                                       }
                                    }
                                    else if(lastOn.name.charAt(4) == "s")
                                    {
                                       switch(upButs[_loc1_])
                                       {
                                          case "but_upg2":
                                             _loc2_ = uint(UnitStats.spell[lastOn.currentLabel].upExp2);
                                             break;
                                          case "but_upg3":
                                             _loc2_ = uint(UnitStats.spell[lastOn.currentLabel].upExp3);
                                             break;
                                          case "but_upgb2":
                                             _loc2_ = uint(UnitStats.spell[lastOn.currentLabel].upbExp2);
                                             break;
                                          case "but_upgb3":
                                             _loc2_ = uint(UnitStats.spell[lastOn.currentLabel].upbExp3);
                                       }
                                    }
                                    if(SD.exp >= _loc2_)
                                    {
                                       SD.exp -= _loc2_;
                                       _loc3_ = String(this[upButs[_loc1_]].currentLabel);
                                       _loc3_ = _loc3_.substring(0,_loc3_.length - 1);
                                       if(_loc1_ < 2)
                                       {
                                          SD.upgrades[lastOn.currentLabel].up2 = _loc3_;
                                       }
                                       else
                                       {
                                          SD.upgrades[lastOn.currentLabel].up3 = _loc3_;
                                       }
                                       setUnitUpgrades();
                                    }
                                 }
                              }
                              continue;
                           }
                           §§pop();
                           §§goto(addr85);
                           §§push(this[upButs[_loc1_]].bg.currentFrame == 5);
                        }
                     }
                     §§goto(addr73);
                  }
               }
               while(true)
               {
                  _loc1_ = §§pop();
                  §§goto(addr596);
               }
            }
            _loc1_ = 0;
            while(_loc1_ < buttons.length)
            {
               if(this[buttons[_loc1_]])
               {
                  if((_loc4_ = this[buttons[_loc1_]]).hitTestPoint(mouseX,mouseY,false))
                  {
                     var _loc6_:* = buttons[_loc1_];
                     §§push("txt_stats" === _loc6_ ? 0 : ("txt_upgrades" === _loc6_ ? 1 : ("bt_back" === _loc6_ ? 2 : ("bt_select" === _loc6_ ? 3 : 4))));
                     loop1:
                     while(true)
                     {
                        switch(§§pop())
                        {
                           case 0:
                              if(lastOn.name.charAt(4) == "u")
                              {
                                 gotoAndStop(1);
                              }
                              if(lastOn.name.charAt(4) == "s")
                              {
                                 gotoAndStop(3);
                              }
                              break loop1;
                           case 1:
                              gotoAndStop(2);
                              break loop1;
                           case 2:
                              main.startClass(MapScreen,{
                                 "midStart":true,
                                 "useClouds":clouds
                              });
                              break loop1;
                           case 3:
                              _loc5_ = true;
                              §§push(0);
                              if(false)
                              {
                                 continue;
                              }
                              §§push(§§pop());
                              if(true)
                              {
                                 _loc1_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(true)
                                    {
                                       if(§§pop() >= 7)
                                       {
                                          if(_loc5_)
                                          {
                                             §§push(0);
                                             break;
                                          }
                                          startMsg.gotoAndStop("error");
                                       }
                                       else
                                       {
                                          if(hudButs[_loc1_] == "blank")
                                          {
                                             _loc5_ = false;
                                          }
                                          §§push(_loc1_);
                                          if(true)
                                          {
                                             §§push(uint(§§pop() + 1));
                                             if(true)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                §§push(uint(§§pop() + 1));
                                             }
                                             addr434:
                                          }
                                          loop5:
                                          while(true)
                                          {
                                             _loc1_ = §§pop();
                                             addr437:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr438:
                                                while(§§pop() < 7)
                                                {
                                                   trace(hudButs[_loc1_]);
                                                   SD.army[_loc1_] = hudButs[_loc1_];
                                                   §§goto(addr434);
                                                   §§push(_loc1_);
                                                }
                                                SH.fadeToMusic(GameStats.getCampaignStats(SD.race,SD.picStage).music);
                                                nextClip = Game;
                                                continue loop5;
                                             }
                                          }
                                       }
                                       break loop1;
                                    }
                                    break;
                                 }
                                 _loc1_ = §§pop();
                                 §§goto(addr437);
                              }
                              §§goto(addr438);
                        }
                     }
                  }
               }
               _loc1_++;
            }
            _loc1_ = 0;
            addr596:
            while(_loc1_ < rosButs.length)
            {
               if(rosButs[_loc1_].hitbox.hitTestPoint(mouseX,mouseY,false))
               {
                  _loc6_ = currentFrame;
                  §§push(1);
                  if(true)
                  {
                     if(§§pop() === _loc6_)
                     {
                        §§push(0);
                        if(false)
                        {
                           addr580:
                        }
                     }
                     else
                     {
                        §§push(3);
                        if(true)
                        {
                           if(§§pop() === _loc6_)
                           {
                              addr583:
                              switch(1)
                              {
                                 case 0:
                                    lastOn = rosButs[_loc1_];
                                    if(lastOn.name.charAt(4) == "s")
                                    {
                                       gotoAndStop(3);
                                    }
                                    else
                                    {
                                       setUnitStats(lastOn,true);
                                    }
                                    break;
                                 case 1:
                                    lastOn = rosButs[_loc1_];
                                    if(lastOn.name.charAt(4) == "u")
                                    {
                                       gotoAndStop(1);
                                    }
                                    else
                                    {
                                       setUnitStats(lastOn,true);
                                    }
                                    break;
                                 case 2:
                                    setUnitUpgrades(rosButs[_loc1_],true);
                              }
                              §§push(_loc1_ + 1);
                              continue loop9;
                           }
                           §§push(2);
                           §§goto(addr583);
                        }
                        if(§§pop() === _loc6_)
                        {
                           §§goto(addr580);
                           §§push(2);
                        }
                        else
                        {
                           §§push(3);
                        }
                     }
                  }
               }
               §§goto(addr583);
               continue loop9;
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function setUnitUpgrades(param1:* = null, param2:Boolean = false) : void
      {
         var _loc3_:* = undefined;
         if(param1)
         {
            lastOn = param1;
         }
         previewImg.gotoAndStop(lastOn.currentLabel);
         var _loc4_:* = lastOn.name.charAt(4);
         if(true)
         {
            if("u" === _loc4_)
            {
               §§push(0);
               if(true)
               {
               }
            }
            else
            {
               §§push("s" === _loc4_ ? 1 : 2);
            }
            switch(§§pop())
            {
               case 0:
                  if(param2)
                  {
                     mouseOn = lastOn;
                  }
                  _loc3_ = UnitStats.unit[lastOn.currentLabel];
                  if(true)
                  {
                     addr81:
                     txt_name.text = _loc3_.name;
                     if(true)
                     {
                        txt_desc.text = _loc3_.desc;
                        if(true)
                        {
                           txt_upg_title.text = _loc3_.upgrade.name;
                           if(true)
                           {
                              txt_upgb_title.text = _loc3_.upgradeb.name;
                              if(true)
                              {
                                 but_upg2.bg.gotoAndStop(1);
                                 if(true)
                                 {
                                    but_upgb2.bg.gotoAndStop(1);
                                    if(true)
                                    {
                                       but_upg3.bg.gotoAndStop(1);
                                       if(true)
                                       {
                                          but_upgb3.bg.gotoAndStop(1);
                                          if(true)
                                          {
                                             if(SD.upgrades[lastOn.currentLabel].up2)
                                             {
                                                if(true)
                                                {
                                                   if(SD.upgrades[lastOn.currentLabel].up2 == _loc3_.upgrade.id)
                                                   {
                                                      if(true)
                                                      {
                                                         but_upg2.gotoAndStop(_loc3_.upgrade.id + "2");
                                                         if(true)
                                                         {
                                                            but_upg2.bg.gotoAndStop(5);
                                                            if(true)
                                                            {
                                                               but_upgb2.gotoAndStop("locked");
                                                               if(true)
                                                               {
                                                                  addr212:
                                                                  if(SD.upgrades[lastOn.currentLabel].up3)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        if(SD.upgrades[lastOn.currentLabel].up3 == _loc3_.upgrade.id)
                                                                        {
                                                                           if(true)
                                                                           {
                                                                              but_upg3.gotoAndStop(_loc3_.upgrade.id + "3");
                                                                              if(true)
                                                                              {
                                                                                 but_upg3.bg.gotoAndStop(5);
                                                                                 if(true)
                                                                                 {
                                                                                    but_upgb3.gotoAndStop("locked");
                                                                                 }
                                                                                 addr319:
                                                                                 txt_exp.text = "" + SD.exp;
                                                                                 addr325:
                                                                                 txt_upg2_cost.text = "Cost: " + _loc3_.upExp2 + " exp";
                                                                                 addr333:
                                                                                 txt_upg3_cost.text = "Cost: " + _loc3_.upExp3 + " exp";
                                                                                 addr341:
                                                                                 txt_upgb2_cost.text = "Cost: " + _loc3_.upbExp2 + " exp";
                                                                                 addr349:
                                                                                 txt_upgb3_cost.text = "Cost: " + _loc3_.upbExp3 + " exp";
                                                                                 addr357:
                                                                                 txt_upg2_stat.text = _loc3_.upgrade.desc.replace("@",Math.round((_loc3_.upgrade.upMod2 - 1) * 100));
                                                                                 addr372:
                                                                                 txt_upg3_stat.text = _loc3_.upgrade.desc.replace("@",Math.round((_loc3_.upgrade.upMod3 - 1) * 100));
                                                                                 addr387:
                                                                                 txt_upgb2_stat.text = _loc3_.upgradeb.desc.replace("@",Math.round((_loc3_.upgradeb.upMod2 - 1) * 100));
                                                                                 addr402:
                                                                                 txt_upgb3_stat.text = _loc3_.upgradeb.desc.replace("@",Math.round((_loc3_.upgradeb.upMod3 - 1) * 100));
                                                                                 addr417:
                                                                                 txt_upg2_stat.text = txt_upg2_stat.text.replace("&",_loc3_.upgrade.upMod2);
                                                                                 addr426:
                                                                                 txt_upg3_stat.text = txt_upg3_stat.text.replace("&",_loc3_.upgrade.upMod3);
                                                                                 addr435:
                                                                                 txt_upgb2_stat.text = txt_upgb2_stat.text.replace("&",_loc3_.upgradeb.upMod2);
                                                                                 txt_upgb3_stat.text = txt_upgb3_stat.text.replace("&",_loc3_.upgradeb.upMod3);
                                                                                 addr273:
                                                                                 break;
                                                                                 addr273:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr262:
                                                                                 but_upgb3.gotoAndStop(_loc3_.upgradeb.id + "3");
                                                                              }
                                                                              §§goto(addr273);
                                                                           }
                                                                           but_upgb3.bg.gotoAndStop(5);
                                                                           §§goto(addr273);
                                                                        }
                                                                        else
                                                                        {
                                                                           but_upg3.gotoAndStop("locked");
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  else
                                                                  {
                                                                     if(SD.upgrades[lastOn.currentLabel].up2)
                                                                     {
                                                                        addr281:
                                                                        if(SD.upgrades[lastOn.currentLabel].up2 == _loc3_.upgrade.id)
                                                                        {
                                                                           addr291:
                                                                           but_upg3.gotoAndStop(_loc3_.upgrade.id + "3");
                                                                           addr298:
                                                                           but_upgb3.gotoAndStop("locked");
                                                                        }
                                                                        else
                                                                        {
                                                                           but_upg3.gotoAndStop("locked");
                                                                           addr305:
                                                                           but_upgb3.gotoAndStop(_loc3_.upgradeb.id + "3");
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        but_upg3.gotoAndStop("locked");
                                                                        addr316:
                                                                        but_upgb3.gotoAndStop("locked");
                                                                        §§goto(addr319);
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                                  addr193:
                                                               }
                                                               §§goto(addr319);
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr319);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   else
                                                   {
                                                      but_upg2.gotoAndStop("locked");
                                                      if(true)
                                                      {
                                                         but_upgb2.gotoAndStop(_loc3_.upgradeb.id + "2");
                                                         if(true)
                                                         {
                                                            but_upgb2.bg.gotoAndStop(5);
                                                            if(true)
                                                            {
                                                               §§goto(addr193);
                                                            }
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                   }
                                                   §§goto(addr305);
                                                }
                                                §§goto(addr333);
                                             }
                                             else
                                             {
                                                but_upg2.gotoAndStop(_loc3_.upgrade.id + "2");
                                                if(true)
                                                {
                                                   but_upgb2.gotoAndStop(_loc3_.upgradeb.id + "2");
                                                   if(true)
                                                   {
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr281);
                                                }
                                             }
                                             §§goto(addr291);
                                          }
                                          §§goto(addr341);
                                       }
                                       §§goto(addr349);
                                    }
                                    §§goto(addr357);
                                 }
                                 §§goto(addr372);
                              }
                              §§goto(addr387);
                           }
                           §§goto(addr402);
                        }
                        §§goto(addr417);
                     }
                     §§goto(addr426);
                  }
                  break;
               case 1:
                  if(param2)
                  {
                     if(true)
                     {
                        mouseOn = lastOn;
                        if(true)
                        {
                           addr48:
                           _loc3_ = UnitStats.spell[lastOn.currentLabel];
                           §§goto(addr81);
                        }
                        §§goto(addr435);
                     }
                     §§goto(addr319);
                  }
                  §§goto(addr48);
               default:
                  §§goto(addr81);
            }
            return;
         }
         §§goto(addr75);
      }
      
      private function setResText(param1:TextField, param2:Number) : void
      {
         if(true)
         {
            §§push(param2);
            if(true)
            {
               §§push(1);
               if(true)
               {
                  if(§§pop() > §§pop())
                  {
                     if(true)
                     {
                        param1.textColor = 16737894;
                        if(true)
                        {
                           param1.text = "-" + Math.round((1 - param2) * 100) + "%";
                           if(true)
                           {
                              §§goto(addr81);
                           }
                           else
                           {
                              param1.text = "+" + Math.round((1 - param2) * 100) + "%";
                              addr54:
                           }
                        }
                     }
                  }
                  else
                  {
                     addr50:
                     if(param2 < 1)
                     {
                        param1.textColor = 6724095;
                        §§goto(addr54);
                     }
                     else
                     {
                        param1.textColor = 13421772;
                     }
                  }
                  §§goto(addr81);
                  §§goto(addr81);
               }
            }
            §§goto(addr50);
         }
         addr81:
      }
      
      public function setUnitStats(param1:* = null, param2:Boolean = false) : void
      {
         var _loc3_:* = undefined;
         if(param1)
         {
            lastOn = param1;
         }
         previewImg.gotoAndStop(lastOn.currentLabel);
         switch(lastOn.name.charAt(4))
         {
            case "u":
               if(param2)
               {
                  if(true)
                  {
                     mouseOn = lastOn;
                  }
                  break;
               }
               _loc3_ = UnitStats.unit[lastOn.currentLabel];
               txt_name.text = _loc3_.name;
               txt_desc.text = _loc3_.desc;
               setResText(txt_resmelee,_loc3_.resC);
               setResText(txt_resranged,_loc3_.resL);
               setResText(txt_resmagic,_loc3_.resM);
               txt_cost.text = "" + _loc3_.cost;
               txt_cooldown.text = _loc3_.cooldown + " seconds";
               switch(_loc3_.atkTyp)
               {
                  case UnitStats.C:
                     txt_type.text = "Melee";
                     break;
                  case UnitStats.L:
                     txt_type.text = "Ranged";
                     break;
                  case UnitStats.M:
                     txt_type.text = "Magic";
                     break;
                  case UnitStats.$:
                     txt_type.text = "None";
                     break;
                  case UnitStats.E:
                     txt_type.text = "None";
               }
               bar_power.width = _loc3_.atk / 50 * 120;
               bar_range.width = _loc3_.rangeX / 350 * 120;
               bar_health.width = _loc3_.hp / 900 * 120;
               bar_speed.width = _loc3_.spd / 5 * 120;
               txt_special.text = "";
               if(_loc3_.amt > 1)
               {
                  txt_special.text += "Spawns in squads of " + _loc3_.amt + " ";
               }
               if(_loc3_.effTyp == "heal")
               {
                  txt_special.text += "Heals nearby allies";
               }
               if(_loc3_.extra.pierce)
               {
                  txt_special.text += "Hits all enemies in range";
               }
               if(_loc3_.effTyp == "fire")
               {
                  txt_special.text += "Sets enemies on fire";
               }
               if(_loc3_.atkTyp == UnitStats.$)
               {
                  txt_special.text += "Mines gold";
               }
               if(_loc3_.atkTyp == UnitStats.$)
               {
                  txt_special.text += "\nImmune to spells";
               }
               if(_loc3_.type == "shield")
               {
                  txt_special.text += "High damage resistance";
               }
               if(txt_special.text == "")
               {
                  txt_special.text = "None";
               }
               break;
            case "s":
               if(param2)
               {
                  mouseOn = lastOn;
               }
               _loc3_ = UnitStats.spell[lastOn.currentLabel];
               if(true)
               {
                  txt_name.text = _loc3_.name;
                  if(true)
                  {
                     txt_desc.text = _loc3_.desc;
                     if(true)
                     {
                        txt_cost.text = "" + _loc3_.cost;
                        if(true)
                        {
                           txt_cooldown.text = _loc3_.cooldown + " seconds";
                           if(true)
                           {
                              switch(_loc3_.atkTyp)
                              {
                                 case UnitStats.C:
                                    txt_type.text = "Melee";
                                    if(true)
                                    {
                                       break;
                                    }
                                    addr324:
                                    break;
                                 case UnitStats.L:
                                    txt_type.text = "Ranged";
                                    break;
                                 case UnitStats.M:
                                    txt_type.text = "Magic";
                                    §§goto(addr324);
                                 case UnitStats.E:
                                    txt_type.text = "Effect";
                              }
                              addr363:
                              bar_power.width = _loc3_.atk / 50 * 120;
                              addr371:
                              bar_range.width = _loc3_.rangeX / 450 * 120;
                              addr379:
                              mc_appearance.gotoAndStop(_loc3_.id);
                              break;
                           }
                        }
                        §§goto(addr363);
                     }
                     §§goto(addr371);
                  }
                  §§goto(addr379);
               }
               §§goto(addr363);
         }
      }
      
      public function KeyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function KeyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = undefined;
         if(nextClip)
         {
            y += (-800 - y) * 0.08;
            if(y < -490)
            {
               main.startClass(nextClip,{"midStart":true});
            }
         }
         else
         {
            y += (0 - y) * 0.08;
         }
         _loc1_ = 0;
         while(true)
         {
            §§push(_loc1_);
            if(true)
            {
               if(§§pop() >= buttons.length)
               {
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
                                    if(§§pop() >= 5)
                                    {
                                       if(true)
                                       {
                                          if(startMsg.currentLabel == "error")
                                          {
                                             if(true)
                                             {
                                                §§push(Boolean(startMsg.txt_okay));
                                                if(Boolean(startMsg.txt_okay))
                                                {
                                                   §§pop();
                                                   if(true)
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr482);
                                                }
                                                addr186:
                                                if(Boolean(startMsg.txt_okay.hitTestPoint(mouseX,mouseY,false)))
                                                {
                                                   if(true)
                                                   {
                                                      startMsg.txt_okay.alpha = 1;
                                                      if(true)
                                                      {
                                                         §§goto(addr207);
                                                      }
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §§push(_loc1_);
                                                         addr475:
                                                         while(true)
                                                         {
                                                            if(§§pop() < 5)
                                                            {
                                                               this["but_hud" + _loc1_].bg.gotoAndStop(1);
                                                               while(true)
                                                               {
                                                                  §§push(_loc1_);
                                                                  addr471:
                                                                  while(true)
                                                                  {
                                                                     §§push(uint(§§pop() + 1));
                                                                     addr473:
                                                                     while(true)
                                                                     {
                                                                        _loc1_ = §§pop();
                                                                        continue loop22;
                                                                     }
                                                                  }
                                                               }
                                                               addr470:
                                                            }
                                                         }
                                                      }
                                                      addr474:
                                                   }
                                                   §§goto(addr477);
                                                }
                                                else if(startMsg.txt_okay)
                                                {
                                                   if(true)
                                                   {
                                                      startMsg.txt_okay.alpha = 0.5;
                                                      if(true)
                                                      {
                                                         §§goto(addr207);
                                                      }
                                                      else
                                                      {
                                                         addr460:
                                                         §§goto(addr474);
                                                      }
                                                   }
                                                   §§goto(addr470);
                                                }
                                                addr207:
                                                return;
                                             }
                                             §§goto(addr489);
                                          }
                                          else
                                          {
                                             if(currentFrame == 2)
                                             {
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
                                                                  if(§§pop() >= upButs.length)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        addr322:
                                                                        if(!mouseOn)
                                                                        {
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
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc1_);
                                                                                          if(true)
                                                                                          {
                                                                                             if(§§pop() < rosButs.length)
                                                                                             {
                                                                                                if(rosButs[_loc1_].hitbox.hitTestPoint(mouseX,mouseY,false))
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      rosButs[_loc1_].bg.gotoAndStop(2);
                                                                                                      if(true)
                                                                                                      {
                                                                                                         addr365:
                                                                                                         §§push(_loc1_);
                                                                                                         if(true)
                                                                                                         {
                                                                                                            §§push(uint(§§pop() + 1));
                                                                                                            if(true)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            addr452:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc1_ = §§pop();
                                                                                                               addr453:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc1_);
                                                                                                               }
                                                                                                               §§goto(addr456);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop() >= 5)
                                                                                                            {
                                                                                                               addr456:
                                                                                                               §§goto(addr477);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               if(hudButs[_loc1_] == "locked")
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr449:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc1_);
                                                                                                                        break loop17;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr440:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  this["but_hud" + _loc1_].bg.gotoAndStop(6);
                                                                                                                  §§goto(addr449);
                                                                                                               }
                                                                                                               §§goto(addr449);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr384:
                                                                                                         addr396:
                                                                                                         if(!mouseOn.hitbox.hitTestPoint(mouseX,mouseY,false) || mouseDrag)
                                                                                                         {
                                                                                                            addr397:
                                                                                                            mouseDrag = true;
                                                                                                            addr400:
                                                                                                            but_drag.x = mouseX - 17;
                                                                                                            addr405:
                                                                                                            but_drag.y = mouseY - 17;
                                                                                                            addr410:
                                                                                                            but_drag.gotoAndStop(mouseOn.currentFrame);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            but_drag.x = -100;
                                                                                                         }
                                                                                                         if(mouseDrag && mouseOn.name.charAt(4) == "u")
                                                                                                         {
                                                                                                            addr430:
                                                                                                            _loc1_ = 0;
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr459:
                                                                                                            _loc1_ = 0;
                                                                                                            §§goto(addr460);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr477);
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   rosButs[_loc1_].bg.gotoAndStop(1);
                                                                                                   if(true)
                                                                                                   {
                                                                                                      §§goto(addr365);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr379:
                                                                                                      §§push(mouseOn);
                                                                                                      if(mouseOn)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                      §§goto(addr396);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr365);
                                                                                             }
                                                                                             §§goto(addr379);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr452);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                              }
                                                                              §§goto(addr459);
                                                                           }
                                                                           §§goto(addr400);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     §§goto(addr405);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(!this[upButs[_loc1_]]);
                                                                     if(!!this[upButs[_loc1_]])
                                                                     {
                                                                        §§pop();
                                                                        if(true)
                                                                        {
                                                                           addr245:
                                                                           §§push(this[upButs[_loc1_]].currentLabel == "locked");
                                                                           if(!(this[upButs[_loc1_]].currentLabel == "locked"))
                                                                           {
                                                                              §§pop();
                                                                              if(true)
                                                                              {
                                                                                 addr259:
                                                                                 if(this[upButs[_loc1_]].bg.currentFrame == 5)
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       addr304:
                                                                                       §§push(_loc1_);
                                                                                       if(true)
                                                                                       {
                                                                                          §§push(uint(§§pop() + 1));
                                                                                          if(true)
                                                                                          {
                                                                                             _loc1_ = §§pop();
                                                                                             if(true)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr410);
                                                                                          }
                                                                                          §§goto(addr473);
                                                                                       }
                                                                                       §§goto(addr475);
                                                                                    }
                                                                                    §§goto(addr430);
                                                                                 }
                                                                                 else if(this[upButs[_loc1_]].hitbox.hitTestPoint(mouseX,mouseY,false))
                                                                                 {
                                                                                    if(true)
                                                                                    {
                                                                                       this[upButs[_loc1_]].bg.gotoAndStop(2);
                                                                                       if(true)
                                                                                       {
                                                                                          §§goto(addr304);
                                                                                       }
                                                                                       §§goto(addr384);
                                                                                    }
                                                                                    §§goto(addr423);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this[upButs[_loc1_]].bg.gotoAndStop(1);
                                                                                    if(true)
                                                                                    {
                                                                                       §§goto(addr304);
                                                                                    }
                                                                                    §§goto(addr397);
                                                                                 }
                                                                                 §§goto(addr397);
                                                                              }
                                                                              §§goto(addr430);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        §§goto(addr440);
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            §§goto(addr471);
                                                         }
                                                         §§goto(addr449);
                                                      }
                                                      §§goto(addr491);
                                                   }
                                                   §§goto(addr490);
                                                }
                                                §§goto(addr453);
                                             }
                                             §§goto(addr322);
                                          }
                                       }
                                       §§goto(addr491);
                                    }
                                    else
                                    {
                                       clouds[_loc1_].MC.x -= clouds[_loc1_].spd;
                                       if(true)
                                       {
                                          if(clouds[_loc1_].MC.x < -500)
                                          {
                                             if(true)
                                             {
                                                clouds[_loc1_].MC.x = 700 + 500;
                                                if(true)
                                                {
                                                   addr148:
                                                   §§push(_loc1_);
                                                   if(true)
                                                   {
                                                      §§push(uint(§§pop() + 1));
                                                      if(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         if(true)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr499);
                                                      }
                                                      while(true)
                                                      {
                                                         _loc1_ = §§pop();
                                                         §§goto(addr512);
                                                      }
                                                      addr511:
                                                   }
                                                   §§goto(addr513);
                                                }
                                                §§goto(addr508);
                                             }
                                             §§goto(addr491);
                                          }
                                          §§goto(addr148);
                                       }
                                    }
                                    §§goto(addr515);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr511);
                              }
                           }
                           §§goto(addr519);
                        }
                        §§goto(addr518);
                     }
                     §§goto(addr517);
                  }
                  §§goto(addr536);
               }
               else
               {
                  if(!this[buttons[_loc1_]])
                  {
                     if(true)
                     {
                        addr83:
                        §§push(_loc1_);
                        if(true)
                        {
                           §§push(uint(§§pop() + 1));
                           if(true)
                           {
                              _loc1_ = §§pop();
                              if(true)
                              {
                                 continue;
                              }
                              §§goto(addr540);
                           }
                           §§goto(addr539);
                        }
                        §§goto(addr541);
                     }
                     §§goto(addr539);
                  }
                  else
                  {
                     _loc2_ = this[buttons[_loc1_]];
                     if(true)
                     {
                        if(_loc2_.hitTestPoint(mouseX,mouseY,false))
                        {
                           if(true)
                           {
                              _loc2_.alpha = 1;
                           }
                        }
                        else
                        {
                           _loc2_.alpha = 0.5;
                        }
                     }
                  }
                  §§goto(addr83);
               }
            }
            break;
         }
         while(true)
         {
            §§goto(addr539);
         }
      }
   }
}
