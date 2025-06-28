package
{
   public class Spell_BigRock extends FakeMC
   {
      
      public var game:*;
      
      public var stats:SpellType;
      
      private var upgrade:UpgradeType;
      
      private var rangeX:Number;
      
      private var rangeY:Number;
      
      private var dmgRan:Number;
      
      private var frameCounter:uint;
      
      public var depthFix:uint;
      
      private var side:uint;
      
      private var eff:EffectControlled;
      
      public var upNum:uint;
      
      private var imgX:Number;
      
      private var imgY:Number;
      
      private var dmgMin:Number;
      
      public function Spell_BigRock(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint)
      {
         super();
         game = param1;
         side = param2;
         x = param3;
         y = param4;
         depthFix = UT.irand(0,1000);
         stats = UnitStats.spell[param5];
         upgrade = UnitStats.upgrades[param6];
         upNum = param7;
         rangeX = stats.rangeX;
         rangeY = stats.rangeY;
         §§push(upgrade.id);
         if(true)
         {
            if(§§pop() == "range")
            {
               rangeX *= upgrade["upMod" + upNum];
               §§push(§§findproperty(rangeY));
               §§push(rangeY);
               if(true)
               {
                  §§push(§§pop() * upgrade["upMod" + upNum]);
               }
               §§pop().rangeY = §§pop();
            }
            if(side == 0)
            {
               §§push(§§findproperty(imgX));
               §§push(x - 650);
               if(true)
               {
                  §§push(§§pop() - rangeX / 2);
               }
               §§pop().imgX = §§pop();
            }
            else
            {
               imgX = x + 650 + rangeX / 2;
            }
            imgY = -1000;
            dmgMin = stats.atk * 0.8;
            dmgRan = stats.atk * 0.4;
            §§push(upgrade.id);
         }
         if(§§pop() == "atk")
         {
            §§push(§§findproperty(dmgMin));
            §§push(dmgMin);
            if(true)
            {
               §§push(§§pop() * upgrade["upMod" + upNum]);
            }
            §§pop().dmgMin = §§pop();
            §§push(§§findproperty(dmgRan));
            §§push(dmgRan);
            if(true)
            {
               §§push(§§pop() * upgrade["upMod" + upNum]);
            }
            §§pop().dmgRan = §§pop();
         }
         frameCounter = 0;
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         if(remove)
         {
            return;
         }
         if(side == 0)
         {
            §§push(eff);
            if(true)
            {
               if(§§pop())
               {
                  var _loc2_:* = §§findproperty(frameCounter);
                  var _loc3_:* = _loc2_.frameCounter + 1;
                  if(true)
                  {
                     _loc2_.frameCounter = _loc3_;
                  }
               }
               else
               {
                  §§push(imgY);
                  §§push(y - 40);
                  if(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(true)
                        {
                           §§push(!game.cmpPause);
                           if(true)
                           {
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    §§pop();
                                    if(true)
                                    {
                                       §§push(!game.pause);
                                       if(false)
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                             }
                                          }
                                          addr571:
                                       }
                                       addr713:
                                    }
                                    addr702:
                                    game.shake.setShake(4,4);
                                 }
                                 loop15:
                                 while(true)
                                 {
                                    §§pop();
                                    addr574:
                                    while(true)
                                    {
                                       §§push(!(frameCounter % 2));
                                       continue loop15;
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    §§push(§§findproperty(imgY));
                                    §§push(imgY);
                                    if(true)
                                    {
                                       §§push(§§pop() + 40);
                                    }
                                    §§pop().imgY = §§pop();
                                    if(true)
                                    {
                                       imgX += 20;
                                       if(true)
                                       {
                                       }
                                       loop2:
                                       while(_loc1_ < game.units0.length)
                                       {
                                          if(game.units0[_loc1_].dead)
                                          {
                                             while(true)
                                             {
                                             }
                                             addr635:
                                          }
                                          else
                                          {
                                             §§push(game.units0[_loc1_] is Unit_Miner);
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr643:
                                                }
                                                else if(UT.getDist(eff.x,eff.y,game.units0[_loc1_].x,game.units0[_loc1_].y) < 80)
                                                {
                                                }
                                             }
                                             addr642:
                                          }
                                          while(true)
                                          {
                                             _loc1_++;
                                             continue loop2;
                                          }
                                       }
                                       addr681:
                                    }
                                    playSound(eff.x,S_RockExplode);
                                 }
                                 game.createEffect(eff.x,eff.y + 1,-75,false,"rockPop");
                                 §§goto(addr702);
                              }
                              game.screen.paintObject(imgX - 40,imgY - 90,BH.getBit("rockFall"));
                              if(true)
                              {
                                 §§goto(addr493);
                              }
                              else
                              {
                                 §§goto(addr677);
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    game.units0[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 0.2,stats.atkTyp);
                                    addr594:
                                    while(true)
                                    {
                                       game.units0[_loc1_].x -= 30;
                                    }
                                 }
                                 addr579:
                              }
                              addr606:
                              while(true)
                              {
                                 _loc1_++;
                              }
                           }
                        }
                        addr709:
                        eff.remove = true;
                        remove = true;
                        §§goto(addr713);
                        addr708:
                     }
                     else
                     {
                        §§push(§§findproperty(imgX));
                        §§push(imgX);
                        if(true)
                        {
                           §§push(§§pop() + 30);
                        }
                        §§pop().imgX = §§pop();
                        if(true)
                        {
                           _loc1_ = 0;
                           if(true)
                           {
                              while(true)
                              {
                                 if(_loc1_ >= game.units1.length)
                                 {
                                    if(true)
                                    {
                                       playSound(imgX,S_RockLand);
                                       if(true)
                                       {
                                          game.screen.paintObject(imgX - 40,y - 80,BH.getBit("rockFall"));
                                          if(true)
                                          {
                                             game.createEffect(imgX,y + 1,-75,false,"rockDust");
                                             if(true)
                                             {
                                                game.shake.setShake(1,6);
                                                if(true)
                                                {
                                                   eff = game.createControlledEffect(imgX,y + 2,-32,false,"rockRoll");
                                                   if(true)
                                                   {
                                                      §§goto(addr493);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                      }
                                                      addr544:
                                                   }
                                                }
                                                while(true)
                                                {
                                                }
                                                addr552:
                                             }
                                             §§goto(addr574);
                                          }
                                          §§goto(addr579);
                                       }
                                       §§goto(addr594);
                                    }
                                    §§goto(addr606);
                                 }
                                 else
                                 {
                                    if(!game.units1[_loc1_].dead)
                                    {
                                       §§push(game.units1[_loc1_] is Unit_Miner);
                                       if(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(true)
                                             {
                                             }
                                             addr627:
                                             §§goto(addr681);
                                          }
                                          else if(UT.getDist(imgX,y,game.units1[_loc1_].x,game.units1[_loc1_].y) < 60)
                                          {
                                             if(true)
                                             {
                                                game.units1[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 0.6,stats.atkTyp);
                                                if(true)
                                                {
                                                }
                                                addr616:
                                                if(eff.x < x - stats.rangeX / 2)
                                                {
                                                }
                                                §§goto(addr713);
                                             }
                                             _loc1_ = 0;
                                             §§goto(addr627);
                                          }
                                       }
                                       break;
                                    }
                                    if(true)
                                    {
                                    }
                                    §§goto(addr635);
                                    _loc1_++;
                                    if(true)
                                    {
                                       continue;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    §§goto(addr552);
                                 }
                                 else
                                 {
                                    §§goto(addr571);
                                    §§push(UT.getDist(eff.x,eff.y,game.units0[_loc1_].x,game.units0[_loc1_].y) < 30);
                                 }
                                 §§goto(addr606);
                              }
                              addr551:
                           }
                           §§goto(addr643);
                        }
                     }
                     while(true)
                     {
                        game.units0[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 1.3,stats.atkTyp);
                        §§goto(addr677);
                     }
                  }
                  else
                  {
                     addr718:
                     if(§§pop() >= §§pop())
                     {
                        §§push(§§findproperty(imgX));
                        §§push(imgX);
                        if(true)
                        {
                           §§push(§§pop() - 30);
                        }
                        §§pop().imgX = §§pop();
                        addr759:
                        _loc1_ = 0;
                        addr762:
                        loop0:
                        while(_loc1_ < game.units0.length)
                        {
                           if(game.units0[_loc1_].dead)
                           {
                              while(true)
                              {
                              }
                              addr770:
                           }
                           else
                           {
                              §§push(game.units0[_loc1_] is Unit_Miner);
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                    }
                                    addr778:
                                 }
                                 else if(UT.getDist(imgX,y,game.units0[_loc1_].x,game.units0[_loc1_].y) < 60)
                                 {
                                    while(true)
                                    {
                                       game.units0[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 0.6,stats.atkTyp);
                                    }
                                    addr795:
                                 }
                              }
                              addr777:
                           }
                           while(true)
                           {
                              _loc1_++;
                              continue loop0;
                           }
                        }
                        addr819:
                        playSound(imgX,S_RockLand);
                        addr823:
                        game.screen.paintObject(imgX - 40,y - 80,BH.getBit("rockFall"));
                        addr835:
                        game.createEffect(imgX,y + 1,-75,false,"rockDust");
                        addr844:
                        game.shake.setShake(1,6);
                        eff = game.createControlledEffect(imgX,y + 2,-32,false,"rockRoll2");
                        addr814:
                     }
                  }
               }
               §§goto(addr493);
            }
            §§pop().x = eff.x + 15;
            _loc1_ = 0;
            while(true)
            {
               if(_loc1_ >= game.units1.length)
               {
                  if(true)
                  {
                     §§push(eff);
                     if(true)
                     {
                        if(§§pop().x > x + stats.rangeX / 2)
                        {
                           if(true)
                           {
                              _loc1_ = 0;
                              if(true)
                              {
                                 while(true)
                                 {
                                    if(_loc1_ >= game.units1.length)
                                    {
                                       if(true)
                                       {
                                          playSound(eff.x,S_RockExplode);
                                          if(true)
                                          {
                                             game.createEffect(eff.x,eff.y + 1,-75,false,"rockPop");
                                             if(true)
                                             {
                                                game.shake.setShake(4,4);
                                                if(true)
                                                {
                                                   §§push(eff);
                                                   if(true)
                                                   {
                                                      §§push(true);
                                                      if(true)
                                                      {
                                                         §§pop().remove = §§pop();
                                                         if(true)
                                                         {
                                                            remove = true;
                                                            if(true)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr709);
                                                      }
                                                      §§goto(addr709);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr616);
                                                   }
                                                }
                                                else
                                                {
                                                   addr719:
                                                   addr722:
                                                   addr728:
                                                   if(!game.cmpPause && !game.pause)
                                                   {
                                                      addr729:
                                                      imgY += 40;
                                                      imgX -= 20;
                                                   }
                                                   addr739:
                                                   game.screen.paintObject(imgX - 40,imgY - 90,BH.getBit("rockFall"));
                                                   §§goto(addr493);
                                                }
                                                §§goto(addr493);
                                             }
                                             §§goto(addr725);
                                          }
                                       }
                                       §§goto(addr729);
                                    }
                                    else
                                    {
                                       if(game.units1[_loc1_].dead)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr770);
                                          }
                                          §§goto(addr493);
                                       }
                                       else
                                       {
                                          §§push(game.units1[_loc1_] is Unit_Miner);
                                          if(false)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(false)
                                             {
                                                §§goto(addr762);
                                             }
                                             §§goto(addr493);
                                          }
                                          else if(UT.getDist(eff.x,eff.y,game.units1[_loc1_].x,game.units1[_loc1_].y) < 80)
                                          {
                                             if(true)
                                             {
                                                game.units1[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 1.3,stats.atkTyp);
                                                if(true)
                                                {
                                                }
                                                §§goto(addr719);
                                             }
                                             else
                                             {
                                                §§goto(addr759);
                                             }
                                          }
                                       }
                                       _loc1_++;
                                       if(true)
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr739);
                                 }
                                 §§goto(addr642);
                              }
                              §§goto(addr778);
                           }
                           §§goto(addr795);
                        }
                        §§goto(addr493);
                     }
                     §§goto(addr708);
                  }
                  §§goto(addr810);
               }
               else
               {
                  if(!game.units1[_loc1_].dead)
                  {
                     §§push(game.units1[_loc1_] is Unit_Miner);
                     if(true)
                     {
                        if(§§pop())
                        {
                           if(true)
                           {
                              §§goto(addr144);
                           }
                           §§goto(addr759);
                        }
                        else
                        {
                           §§push(UT.getDist(eff.x,eff.y,game.units1[_loc1_].x,game.units1[_loc1_].y) < 30);
                           if(true)
                           {
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    §§pop();
                                    if(true)
                                    {
                                       §§push(!(frameCounter % 2));
                                       if(false)
                                       {
                                          §§goto(addr722);
                                       }
                                    }
                                    §§goto(addr844);
                                 }
                                 §§goto(addr724);
                              }
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    game.units1[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 0.2,stats.atkTyp);
                                    if(true)
                                    {
                                       game.units1[_loc1_].x += 30;
                                       if(true)
                                       {
                                       }
                                       §§goto(addr819);
                                    }
                                    §§goto(addr823);
                                 }
                                 §§goto(addr835);
                              }
                              §§goto(addr144);
                           }
                        }
                     }
                     break;
                  }
                  if(true)
                  {
                     addr144:
                     _loc1_++;
                     if(true)
                     {
                        continue;
                     }
                     §§goto(addr814);
                  }
                  §§goto(addr493);
               }
            }
            §§goto(addr777);
         }
         else
         {
            §§push(eff);
            if(true)
            {
               if(§§pop())
               {
                  if(true)
                  {
                     ++frameCounter;
                     if(true)
                     {
                        §§push(!game.cmpPause);
                        if(true)
                        {
                           §§push(§§pop() && eff);
                        }
                        if(§§pop())
                        {
                           §§goto(addr527);
                        }
                        §§goto(addr713);
                     }
                     addr533:
                     _loc1_ = 0;
                  }
               }
               else
               {
                  §§goto(addr718);
                  §§push(imgY);
                  §§push(y - 40);
               }
               addr493:
               if(!game.cmpPause && !game.pause)
               {
                  §§push(eff);
               }
               return;
            }
            §§pop().x = eff.x - 15;
            §§goto(addr533);
         }
         §§goto(addr616);
      }
      
      public function playSound(param1:Number, param2:*) : void
      {
         var _loc3_:Number = NaN;
         if(true)
         {
            _loc3_ = Number(game.isOnScreen(param1));
            if(true)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
            SH.playUnitSound(null,_loc3_,param2);
         }
      }
   }
}

