package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol1164")]
   public class PauseScreen extends MovieClip
   {
      
      public var txt_res1:TextField;
      
      public var txt_scroll_off:TextField;
      
      public var txt_health_off:TextField;
      
      public var txt_awesome_0:TextField;
      
      public var txt_awesome_1:TextField;
      
      public var txt_tip:TextField;
      
      public var txt_awesome_2:TextField;
      
      public var txt_time1:TextField;
      
      public var txt_screenshot:TextField;
      
      public var txt_blood_off:TextField;
      
      public var but_max:MovieClip;
      
      public var txt_quit:TextField;
      
      public var txt_resume:TextField;
      
      public var txt_music_on:TextField;
      
      public var txt_sound_off:TextField;
      
      public var txt_blood_on:TextField;
      
      public var txt_gold1:TextField;
      
      public var txt_music_off:TextField;
      
      public var txt_sold1:TextField;
      
      public var txt_dmg_on:TextField;
      
      public var txt_ans1:TextField;
      
      public var txt_ans2:TextField;
      
      public var buttons:Array;
      
      public var txt_scroll_on:TextField;
      
      public var txt_health_on:TextField;
      
      public var txt_blood_lots:TextField;
      
      public var txt_dmg_off:TextField;
      
      public var game:Game;
      
      public var txt_unlock:TextField;
      
      public var txt_winback:TextField;
      
      private var maxStage:uint;
      
      public var txt_sound_on:TextField;
      
      public function PauseScreen(param1:Game)
      {
         if(true)
         {
            super();
            if(true)
            {
               addFrameScript(0,frame1,69,frame70,120,frame121,185,frame186);
               if(true)
               {
                  game = param1;
                  buttons = new Array("txt_scroll_on","txt_scroll_off","txt_resume","txt_quit","txt_winback","txt_screenshot","txt_dmg_on","txt_dmg_off","txt_health_on","txt_health_off","txt_sound_on","txt_sound_off","txt_music_on","txt_music_off","txt_awesome_0","txt_awesome_1","txt_awesome_2","txt_blood_on","txt_blood_off","txt_blood_lots");
               }
               stop();
            }
            §§push(§§findproperty(maxStage));
            if(true)
            {
               addr84:
               if(SD.race == "boar")
               {
                  §§push(5);
               }
               §§pop().maxStage = §§pop();
            }
            §§push(10);
            if(true)
            {
            }
            §§goto(addr84);
         }
      }
      
      public function MouseUp() : void
      {
      }
      
      public function victory() : void
      {
         if(true)
         {
            visible = true;
            gotoAndPlay("win");
         }
      }
      
      public function screenshotOff() : void
      {
         if(true)
         {
            if(game.screenshot)
            {
               if(true)
               {
                  game.screenshot = false;
                  pauseOn();
               }
               SH.setMusicVolume(0.2);
            }
         }
      }
      
      public function showRandomTip() : void
      {
         if(true)
         {
            txt_tip.text = "Tip:\n";
         }
         §§push(UT.irand(0,15));
         if(true)
         {
            var _loc1_:* = §§pop();
            if(true)
            {
               if(0 === _loc1_)
               {
                  addr264:
                  if(true)
                  {
                     §§push(0);
                  }
               }
               else
               {
                  if(1 === _loc1_)
                  {
                     if(true)
                     {
                        §§push(1);
                     }
                     §§goto(addr264);
                  }
                  else
                  {
                     if(2 === _loc1_)
                     {
                        if(true)
                        {
                           §§push(2);
                        }
                        §§goto(addr264);
                     }
                     else
                     {
                        if(3 === _loc1_)
                        {
                           if(true)
                           {
                              §§push(3);
                           }
                           §§goto(addr264);
                        }
                        else
                        {
                           if(4 === _loc1_)
                           {
                              if(true)
                              {
                                 §§push(4);
                              }
                              §§goto(addr264);
                           }
                           else
                           {
                              if(5 === _loc1_)
                              {
                                 if(true)
                                 {
                                    §§push(5);
                                 }
                                 §§goto(addr264);
                              }
                              else
                              {
                                 if(6 === _loc1_)
                                 {
                                    if(true)
                                    {
                                       §§push(6);
                                    }
                                 }
                                 else if(7 === _loc1_)
                                 {
                                    §§push(7);
                                 }
                                 else if(8 !== _loc1_)
                                 {
                                    if(9 !== _loc1_)
                                    {
                                       if(10 !== _loc1_)
                                       {
                                          if(11 !== _loc1_)
                                          {
                                             if(12 !== _loc1_)
                                             {
                                                if(13 !== _loc1_)
                                                {
                                                   if(14 !== _loc1_)
                                                   {
                                                      if(15 !== _loc1_)
                                                      {
                                                         §§push(16);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr264);
                                 §§push(8);
                              }
                              §§goto(addr264);
                              §§push(9);
                           }
                           §§goto(addr264);
                           §§push(10);
                        }
                        §§goto(addr264);
                        §§push(11);
                     }
                     §§goto(addr264);
                     §§push(12);
                  }
                  §§goto(addr264);
                  §§push(13);
               }
               §§goto(addr264);
               §§push(14);
            }
            §§goto(addr264);
            §§push(15);
         }
         switch(§§pop())
         {
            case 0:
               txt_tip.text += "Light units are good for pushing to the base, but will die quickly against the base\'s rooftop archers.";
               break;
            case 1:
               txt_tip.text += "Heavy units may be expensive, but are good for damaging the enemy base, as they can better withstand the rooftop archer\'s attacks.";
               break;
            case 2:
               txt_tip.text += "Rooftop archers are a great way to stop light enemy units quickly.";
               break;
            case 3:
               txt_tip.text += "Upgraded units may be more expensive, but using them wisely will turn the tides of battle.";
               break;
            case 4:
               txt_tip.text += "Healers (Romans) will greatly keep an army alive during a push to the enemy base, and while attacking it.";
               break;
            case 5:
               txt_tip.text += "Shamans (Gaul) can drastically increase the damage output of a group of an army.";
               break;
            case 6:
               txt_tip.text += "Spells are placed on the ground, so when placing a spell, place it at the feet of the enemies.";
               break;
            case 7:
               txt_tip.text += "Ranged attackers are good against melee enemies, but will die very quickly at the enemy base due to their low health.";
               break;
            case 8:
               txt_tip.text += "Generals are an excellent way to quickly clear a pack of enemies, just make sure you have units in front to take the hits.";
               break;
            case 9:
               txt_tip.text += "Don\'t forget about your spells, they are an essential tool in your arsenal, and can quickly turn the tides of battle.";
               break;
            case 10:
               txt_tip.text += "To keep your gold steady, create only cheaper units in the begining, and use upgraded or stronger units when you have more gold.";
               break;
            case 11:
               txt_tip.text += "Miners can be upgraded to return more gold at once, but Miners upgraded with speed can return gold much much quicker on larger maps.";
               break;
            case 12:
               txt_tip.text += "Try not to create Miners in paths with oncoming enemies. Miners will die quickly, so make sure you have units defending their path.";
               break;
            case 13:
               txt_tip.text += "Miners are immune to all spells, so don\'t waste your spells trying to kill enemy miners.";
               break;
            case 14:
               txt_tip.text += "Spells can only damage units, not the base, so don\'t waste your spells trying to damage the enemy base.";
               break;
            case 15:
               txt_tip.text += "Generals are immune to all status effects. They can not be healed, buffed, debuffed, or set on fire.";
         }
      }
      
      internal function frame186() : *
      {
         stop();
         showRandomTip();
      }
      
      internal function frame1() : *
      {
         screenshotOff();
      }
      
      public function pauseOn() : void
      {
         visible = true;
      }
      
      public function MouseDown() : void
      {
         var _loc1_:uint = 0;
         if(game.screenshot)
         {
            gotoAndStop("pause");
            return;
         }
         if(Boolean(but_max) && but_max.hitTestPoint(mouseX,mouseY,false))
         {
            SD.urlSponsor();
         }
         _loc1_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < buttons.length)
            {
               if(this[buttons[_loc1_]])
               {
                  if(this[buttons[_loc1_]].hitTestPoint(mouseX,mouseY,false))
                  {
                     switch(buttons[_loc1_])
                     {
                        case "txt_health_on":
                           SD.showHpBar = true;
                           break;
                        case "txt_health_off":
                           SD.showHpBar = false;
                           break;
                        case "txt_scroll_on":
                           SD.cursorMove = true;
                           break;
                        case "txt_scroll_off":
                           SD.cursorMove = false;
                           break;
                        case "txt_dmg_on":
                           SD.showDmg = true;
                           break;
                        case "txt_dmg_off":
                           SD.showDmg = false;
                           break;
                        case "txt_music_on":
                           SH.setMusicVolume(0.2);
                           SD.musicOn = true;
                           break;
                        case "txt_music_off":
                           SH.setMusicVolume(0);
                           SD.musicOn = false;
                           break;
                        case "txt_sound_on":
                           SD.soundOn = true;
                           break;
                        case "txt_sound_off":
                           SD.soundOn = false;
                           break;
                        case "txt_resume":
                           §§push(game);
                           if(true)
                           {
                              §§pop().pauseOff();
                              break;
                           }
                           addr129:
                           §§pop().nextClip = MapScreen;
                           SH.fadeToMusic(S_Char);
                           visible = false;
                           break;
                        case "txt_winback":
                           trace("Clicked winback");
                           SD.save();
                        case "txt_quit":
                           SH.setMusicVolume(1);
                           §§goto(addr129);
                           §§push(game);
                        case "txt_screenshot":
                           screenshotOn();
                           break;
                        case "txt_awesome_0":
                           SD.awesomeness = 0;
                           break;
                        case "txt_awesome_1":
                           SD.awesomeness = 1;
                           break;
                        case "txt_awesome_2":
                           SD.awesomeness = 2;
                           break;
                        case "txt_blood_off":
                           SD.blood = 0;
                           break;
                        case "txt_blood_on":
                           SD.blood = 1;
                           break;
                        case "txt_blood_lots":
                           SD.blood = 2;
                     }
                  }
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
      
      internal function frame70() : *
      {
         stop();
      }
      
      public function defeat() : void
      {
         visible = true;
         gotoAndPlay("lose");
      }
      
      public function showWinResults() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:uint = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         _loc1_ = GameStats.getCampaignStats(SD.race,SD.picStage);
         txt_res1.text = "Match Exp:\n";
         §§push(Number(_loc1_.expGiven));
         if(true)
         {
            _loc2_ = §§pop();
            txt_ans1.text = _loc2_ + "\n";
            §§push(SD.picStage);
            if(true)
            {
               §§push(§§pop() == SD.curStage);
               if(true)
               {
                  if(§§pop())
                  {
                     if(true)
                     {
                        §§pop();
                        §§push(SD.curStage);
                        if(true)
                        {
                           §§push(§§pop() < maxStage);
                           if(true)
                           {
                           }
                           addr197:
                           if(§§pop())
                           {
                           }
                        }
                        addr202:
                        §§push(§§pop() < maxStage);
                     }
                     §§pop();
                     §§goto(addr202);
                     §§push(SD.curStage);
                  }
                  if(§§pop())
                  {
                     txt_res1.text += "First Time Bonus:";
                     txt_ans1.text += "x1.5";
                     §§push(Math.round(_loc2_ * 1.5));
                     if(true)
                     {
                        _loc2_ = §§pop();
                     }
                     addr162:
                     _loc4_ = §§pop();
                     §§push(_loc3_ % 60);
                  }
                  else
                  {
                     txt_res1.text += "Bonus:";
                     txt_ans1.text += "None";
                  }
                  txt_ans2.text = _loc2_ + "\n" + (SD.exp + _loc2_);
                  txt_sold1.text = game.hud.unitKills + "\n" + game.hud.unitDeaths;
                  txt_gold1.text = game.hud.goldEarned + "\n" + game.hud.goldSpent;
                  §§push(game.hud.frameCounter);
                  if(true)
                  {
                     §§push(uint(§§pop() / 30));
                     if(true)
                     {
                        _loc3_ = §§pop();
                        §§push(_loc3_);
                        if(true)
                        {
                           §§goto(addr162);
                           §§push(§§pop() / 60);
                        }
                        §§goto(addr162);
                     }
                     addr168:
                     _loc3_ = §§pop();
                     txt_time1.text = _loc4_ + ":" + (_loc3_ < 10 ? "0" : "") + _loc3_;
                     SD.exp += _loc2_;
                     §§push(SD.picStage);
                  }
                  §§goto(addr197);
                  §§push(§§pop() == SD.curStage);
               }
               if(§§pop())
               {
                  var _loc10_:* = SD;
                  var _loc11_:* = _loc10_.curStage + 1;
                  if(true)
                  {
                     _loc10_.curStage = _loc11_;
                  }
               }
               txt_unlock.text = "";
               §§goto(addr464);
            }
            _loc5_ = §§pop();
            while(_loc5_ < _loc1_.unlock.length)
            {
               _loc6_ = _loc1_.unlock[_loc5_].substring(2);
               _loc10_ = _loc1_.unlock[_loc5_].charAt(0);
               if(true)
               {
                  if("g" === _loc10_)
                  {
                     addr437:
                     if(true)
                     {
                        §§push(0);
                     }
                     switch(§§pop())
                     {
                        case 0:
                           if(!SD.unlockGeneral)
                           {
                              txt_unlock.text += "Unlocked General: " + UnitStats.unit[_loc6_].name;
                              SD.unlockGeneral = 1;
                           }
                           break;
                        case 1:
                           _loc7_ = GameStats.getUnitOrder(SD.race).indexOf(_loc6_) + 1;
                           if(_loc7_ > SD.unlockUnit)
                           {
                              txt_unlock.text += "Unlocked Unit: " + UnitStats.unit[_loc6_].name;
                              SD.unlockUnit = _loc7_;
                           }
                           break;
                        case 2:
                           _loc8_ = GameStats.getSpellOrder(SD.race).indexOf(_loc6_) + 1;
                           if(_loc8_ > SD.unlockSpell)
                           {
                              txt_unlock.text += "Unlocked Spell: " + UnitStats.spell[_loc6_].name;
                              SD.unlockSpell = _loc8_;
                           }
                           break;
                        case 3:
                           _loc9_ = Number(_loc6_.charAt(0));
                           §§push(_loc6_);
                           if(true)
                           {
                              §§push(§§pop().substring(2));
                           }
                           _loc6_ = §§pop();
                           if(_loc9_ > SD.unlockDefense)
                           {
                              txt_unlock.text += "Unlocked Ability: " + _loc6_;
                              SD.unlockDefense = _loc9_;
                           }
                           break;
                        case 4:
                           _loc9_ = Number(_loc6_.charAt(0));
                           if(true)
                           {
                              §§push(_loc6_);
                              if(true)
                              {
                                 §§push(§§pop().substring(2));
                              }
                              _loc6_ = §§pop();
                              if(true)
                              {
                                 if(_loc9_ > SD.unlockCampaign)
                                 {
                                    txt_unlock.text += "Unlocked " + _loc6_ + " Campaign!";
                                 }
                              }
                              SD.unlockCampaign = _loc9_;
                           }
                     }
                     if(_loc5_ == 0)
                     {
                        txt_unlock.text += "\n";
                     }
                     _loc5_++;
                     continue;
                  }
                  if("u" === _loc10_)
                  {
                     if(true)
                     {
                        §§push(1);
                     }
                  }
                  else if("s" !== _loc10_)
                  {
                     if("a" !== _loc10_)
                     {
                        if("c" !== _loc10_)
                        {
                           §§push(5);
                        }
                     }
                  }
                  §§goto(addr437);
                  §§goto(addr437);
                  §§push(3);
               }
               §§goto(addr437);
               §§push(4);
            }
            addr464:
            if(_loc1_.unlock)
            {
               §§push(0);
            }
            return;
         }
         §§goto(addr168);
         §§push(§§pop());
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         var _loc2_:Boolean = false;
         if(but_max)
         {
            if(but_max.hitTestPoint(mouseX,mouseY,false))
            {
               but_max.alpha += (0 - but_max.alpha) * 0.3;
            }
            else
            {
               but_max.alpha += (1 - but_max.alpha) * 0.3;
            }
         }
         _loc1_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(true)
            {
               if(§§pop() >= buttons.length)
               {
                  return;
               }
               if(!this[buttons[_loc1_]])
               {
                  break;
               }
               _loc2_ = false;
               var _loc3_:* = buttons[_loc1_];
               if(true)
               {
                  if("txt_scroll_on" === _loc3_)
                  {
                     if(true)
                     {
                        §§push(0);
                        if(true)
                        {
                        }
                     }
                     addr313:
                     switch(§§pop())
                     {
                        case 0:
                           if(SD.cursorMove)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 1:
                           if(!SD.cursorMove)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 2:
                           if(SD.showHpBar)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 3:
                           if(!SD.showHpBar)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 4:
                           if(SD.showDmg)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 5:
                           if(!SD.showDmg)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 6:
                           if(SD.musicOn)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 7:
                           if(!SD.musicOn)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 8:
                           if(SD.soundOn)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 9:
                           if(!SD.soundOn)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 10:
                           §§push(SD.awesomeness);
                           if(true)
                           {
                              if(§§pop() == 0)
                              {
                                 _loc2_ = true;
                              }
                              break;
                           }
                           continue;
                        case 11:
                           §§push(SD.awesomeness);
                           if(true)
                           {
                              if(§§pop() == 1)
                              {
                                 _loc2_ = true;
                              }
                              break;
                           }
                           continue loop0;
                        case 12:
                           §§push(SD.awesomeness);
                           if(true)
                           {
                              if(§§pop() == 2)
                              {
                                 _loc2_ = true;
                              }
                              break;
                           }
                           addr358:
                           §§push(uint(§§pop() + 1));
                           continue loop0;
                        case 13:
                           §§push(SD.blood);
                           if(true)
                           {
                              if(§§pop() == 0)
                              {
                                 _loc2_ = true;
                              }
                              break;
                           }
                           addr188:
                           if(§§pop() == 2)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 14:
                           if(SD.blood == 1)
                           {
                              _loc2_ = true;
                           }
                           break;
                        case 15:
                           §§goto(addr188);
                           §§push(SD.blood);
                     }
                     if(_loc2_)
                     {
                        this[buttons[_loc1_]].textColor = 15197440;
                        break;
                     }
                     if(this[buttons[_loc1_]].hitTestPoint(mouseX,mouseY,false))
                     {
                        this[buttons[_loc1_]].textColor = 15197440;
                        break;
                     }
                     this[buttons[_loc1_]].textColor = 13409598;
                     break;
                  }
                  if("txt_scroll_off" === _loc3_)
                  {
                     if(true)
                     {
                        §§push(1);
                        if(false)
                        {
                           addr310:
                        }
                     }
                     §§goto(addr313);
                  }
                  else
                  {
                     if("txt_health_on" === _loc3_)
                     {
                        if(true)
                        {
                           §§push(2);
                           if(false)
                           {
                              addr305:
                           }
                        }
                        §§goto(addr313);
                     }
                     else
                     {
                        if("txt_health_off" === _loc3_)
                        {
                           if(true)
                           {
                              §§push(3);
                              if(false)
                              {
                                 addr300:
                              }
                           }
                           §§goto(addr313);
                        }
                        else
                        {
                           if("txt_dmg_on" === _loc3_)
                           {
                              if(true)
                              {
                                 §§push(4);
                                 if(false)
                                 {
                                    addr295:
                                 }
                              }
                              §§goto(addr313);
                           }
                           else
                           {
                              if("txt_dmg_off" === _loc3_)
                              {
                                 if(true)
                                 {
                                    §§push(5);
                                    if(false)
                                    {
                                       addr290:
                                    }
                                 }
                                 §§goto(addr313);
                              }
                              else
                              {
                                 if("txt_music_on" === _loc3_)
                                 {
                                    if(true)
                                    {
                                       §§push(6);
                                       if(false)
                                       {
                                          addr285:
                                       }
                                    }
                                 }
                                 else if("txt_music_off" === _loc3_)
                                 {
                                    §§push(7);
                                    if(false)
                                    {
                                       addr280:
                                    }
                                 }
                                 else if("txt_sound_on" !== _loc3_)
                                 {
                                    if("txt_sound_off" !== _loc3_)
                                    {
                                       if("txt_awesome_0" !== _loc3_)
                                       {
                                          if("txt_awesome_1" !== _loc3_)
                                          {
                                             if("txt_awesome_2" !== _loc3_)
                                             {
                                                if("txt_blood_off" !== _loc3_)
                                                {
                                                   if("txt_blood_on" !== _loc3_)
                                                   {
                                                      if("txt_blood_lots" !== _loc3_)
                                                      {
                                                         §§push(16);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr313);
                                 §§push(8);
                              }
                              §§goto(addr280);
                              §§push(9);
                           }
                           §§goto(addr285);
                           §§push(10);
                        }
                        §§goto(addr290);
                        §§push(11);
                     }
                     §§goto(addr295);
                     §§push(12);
                  }
                  §§goto(addr300);
                  §§push(13);
                  §§goto(addr305);
                  §§push(14);
               }
               §§goto(addr310);
               §§push(15);
            }
            §§goto(addr358);
            _loc1_ = §§pop();
         }
      }
      
      public function pauseOff() : void
      {
         if(true)
         {
            visible = false;
         }
      }
      
      internal function frame121() : *
      {
         stop();
         showWinResults();
      }
      
      public function screenshotOn() : void
      {
         gotoAndPlay("screenshot");
         game.screenshot = true;
         SH.setMusicVolume(1);
      }
   }
}

