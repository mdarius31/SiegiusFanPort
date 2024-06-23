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
                  var _loc2_:*;
                  var _loc3_:* = (_loc2_ = §§findproperty(frameCounter)).frameCounter + 1;
                  if(true)
                  {
                     _loc2_.frameCounter = _loc3_;
                  }
                  if(!game.cmpPause && !game.pause)
                  {
                     addr46:
                     eff.x += 15;
                     _loc1_ = 0;
                     loop17:
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
                                          loop18:
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
                                                                        addr867:
                                                                        return;
                                                                        addr289:
                                                                        addr493:
                                                                     }
                                                                     §§goto(addr867);
                                                                  }
                                                                  addr713:
                                                                  §§goto(addr867);
                                                               }
                                                               else
                                                               {
                                                                  addr709:
                                                                  §§pop().remove = §§pop();
                                                               }
                                                               remove = true;
                                                            }
                                                            else
                                                            {
                                                               addr616:
                                                               if(§§pop().x < x - stats.rangeX / 2)
                                                               {
                                                                  addr624:
                                                                  _loc1_ = 0;
                                                                  addr627:
                                                                  loop2:
                                                                  while(_loc1_ < game.units0.length)
                                                                  {
                                                                     if(!game.units0[_loc1_].dead)
                                                                     {
                                                                        §§push(game.units0[_loc1_] is Unit_Miner);
                                                                        break loop18;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc1_++;
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  addr686:
                                                                  playSound(eff.x,S_RockExplode);
                                                                  addr691:
                                                                  game.createEffect(eff.x,eff.y + 1,-75,false,"rockPop");
                                                                  addr702:
                                                                  game.shake.setShake(4,4);
                                                                  addr708:
                                                                  §§goto(addr709);
                                                                  §§push(eff);
                                                                  §§push(true);
                                                                  addr681:
                                                               }
                                                            }
                                                            §§goto(addr713);
                                                         }
                                                         else
                                                         {
                                                            addr722:
                                                            §§push(!game.cmpPause);
                                                            if(!game.cmpPause)
                                                            {
                                                               addr724:
                                                               §§pop();
                                                               addr728:
                                                               if(!game.pause)
                                                               {
                                                                  addr729:
                                                                  imgY += 40;
                                                                  addr734:
                                                                  imgX -= 20;
                                                                  addr739:
                                                                  game.screen.paintObject(imgX - 40,imgY - 90,BH.getBit("rockFall"));
                                                               }
                                                               §§goto(addr739);
                                                            }
                                                            §§goto(addr728);
                                                         }
                                                      }
                                                      §§goto(addr728);
                                                   }
                                                   §§goto(addr729);
                                                }
                                                §§goto(addr734);
                                             }
                                             else
                                             {
                                                if(game.units1[_loc1_].dead)
                                                {
                                                   if(true)
                                                   {
                                                      addr235:
                                                      _loc1_++;
                                                      if(true)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr729);
                                                   }
                                                   else
                                                   {
                                                      loop19:
                                                      while(true)
                                                      {
                                                         addr810:
                                                         while(true)
                                                         {
                                                            _loc1_++;
                                                            addr814:
                                                            addr819:
                                                            addr823:
                                                            addr835:
                                                            addr844:
                                                            while(_loc1_ < game.units0.length)
                                                            {
                                                               if(!game.units0[_loc1_].dead)
                                                               {
                                                                  §§push(game.units0[_loc1_] is Unit_Miner);
                                                                  break loop17;
                                                               }
                                                               continue loop19;
                                                            }
                                                            playSound(imgX,S_RockLand);
                                                            game.screen.paintObject(imgX - 40,y - 80,BH.getBit("rockFall"));
                                                            game.createEffect(imgX,y + 1,-75,false,"rockDust");
                                                            addr849:
                                                            game.shake.setShake(1,6);
                                                            eff = game.createControlledEffect(imgX,y + 2,-32,false,"rockRoll2");
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr867);
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
                                                      if(true)
                                                      {
                                                         §§goto(addr235);
                                                      }
                                                      else
                                                      {
                                                         addr762:
                                                         §§goto(addr814);
                                                      }
                                                   }
                                                   else if(UT.getDist(eff.x,eff.y,game.units1[_loc1_].x,game.units1[_loc1_].y) < 80)
                                                   {
                                                      if(true)
                                                      {
                                                         game.units1[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 1.3,stats.atkTyp);
                                                         if(true)
                                                         {
                                                            §§goto(addr235);
                                                         }
                                                         §§goto(addr729);
                                                      }
                                                      else
                                                      {
                                                         addr759:
                                                         _loc1_ = 0;
                                                         §§goto(addr762);
                                                      }
                                                   }
                                                }
                                                §§goto(addr235);
                                             }
                                          }
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
                                                while(true)
                                                {
                                                   game.units0[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 1.3,stats.atkTyp);
                                                }
                                                addr662:
                                             }
                                             §§goto(addr677);
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr810);
                                       }
                                       addr778:
                                    }
                                    while(true)
                                    {
                                       game.units0[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 0.6,stats.atkTyp);
                                       §§goto(addr810);
                                    }
                                    addr795:
                                 }
                                 §§goto(addr289);
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
                                    §§goto(addr849);
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
                                                if(true)
                                                {
                                                   addr110:
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
                                                               §§goto(addr144);
                                                            }
                                                            §§goto(addr819);
                                                         }
                                                         §§goto(addr823);
                                                      }
                                                      §§goto(addr835);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                else
                                                {
                                                   §§goto(addr722);
                                                }
                                             }
                                             §§goto(addr844);
                                          }
                                          §§goto(addr724);
                                       }
                                       §§goto(addr110);
                                    }
                                    §§goto(addr724);
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
                           §§goto(addr867);
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           §§goto(addr778);
                        }
                        else if(UT.getDist(imgX,y,game.units0[_loc1_].x,game.units0[_loc1_].y) < 60)
                        {
                           §§goto(addr795);
                        }
                        §§goto(addr810);
                     }
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
                                       if(true)
                                       {
                                          addr316:
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
                                                      addr335:
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
                                                   §§goto(addr681);
                                                }
                                                §§goto(addr686);
                                             }
                                             §§goto(addr691);
                                          }
                                          §§goto(addr335);
                                       }
                                       else
                                       {
                                          loop14:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop15:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr574:
                                                   while(true)
                                                   {
                                                      §§push(!(frameCounter % 2));
                                                      addr578:
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
                                                         loop9:
                                                         while(true)
                                                         {
                                                            _loc1_++;
                                                            addr610:
                                                            while(_loc1_ < game.units0.length)
                                                            {
                                                               if(game.units0[_loc1_].dead)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr544:
                                                               }
                                                               else
                                                               {
                                                                  §§push(game.units0[_loc1_] is Unit_Miner);
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§push(UT.getDist(eff.x,eff.y,game.units0[_loc1_].x,game.units0[_loc1_].y) < 30);
                                                                        continue loop14;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  addr551:
                                                               }
                                                            }
                                                            addr615:
                                                            §§goto(addr616);
                                                         }
                                                      }
                                                      continue loop15;
                                                   }
                                                }
                                                addr573:
                                             }
                                             §§goto(addr578);
                                          }
                                       }
                                       §§goto(addr713);
                                    }
                                    §§goto(addr702);
                                 }
                                 §§goto(addr573);
                              }
                              §§goto(addr316);
                           }
                           §§goto(addr578);
                        }
                        §§goto(addr686);
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
                                                      §§goto(addr867);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr544);
                                                   }
                                                }
                                                §§goto(addr552);
                                             }
                                             §§goto(addr574);
                                          }
                                          §§goto(addr579);
                                       }
                                       §§goto(addr594);
                                    }
                                    §§goto(addr606);
                                 }
                                 else if(game.units1[_loc1_].dead)
                                 {
                                    if(true)
                                    {
                                       continue;
                                    }
                                    §§goto(addr635);
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
                                       if(true)
                                       {
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       if(UT.getDist(imgX,y,game.units1[_loc1_].x,game.units1[_loc1_].y) >= 60)
                                       {
                                          continue;
                                       }
                                       if(true)
                                       {
                                          game.units1[_loc1_].damage((Math.random() * dmgRan + dmgMin) * 0.6,stats.atkTyp);
                                          if(true)
                                          {
                                             continue;
                                          }
                                          §§goto(addr615);
                                       }
                                       §§goto(addr624);
                                    }
                                    §§goto(addr627);
                                 }
                                 §§goto(addr624);
                              }
                              §§goto(addr551);
                           }
                           §§goto(addr643);
                        }
                     }
                     §§goto(addr662);
                  }
                  else
                  {
                     addr718:
                     if(§§pop() < §§pop())
                     {
                        §§goto(addr722);
                     }
                     else
                     {
                        §§push(§§findproperty(imgX));
                        §§push(imgX);
                        if(true)
                        {
                           §§push(§§pop() - 30);
                        }
                        §§pop().imgX = §§pop();
                        §§goto(addr759);
                     }
                  }
               }
               §§goto(addr867);
            }
            §§goto(addr46);
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
                           if(§§pop())
                           {
                              §§pop();
                              if(true)
                              {
                                 addr526:
                                 if(!game.pause)
                                 {
                                    addr528:
                                    eff.x -= 15;
                                    addr533:
                                    _loc1_ = 0;
                                    §§goto(addr610);
                                    addr527:
                                 }
                                 §§goto(addr713);
                              }
                              §§goto(addr527);
                           }
                        }
                        §§goto(addr526);
                     }
                  }
                  §§goto(addr533);
               }
               else
               {
                  §§goto(addr718);
                  §§push(imgY);
                  §§push(y - 40);
               }
               §§goto(addr867);
            }
            §§goto(addr528);
         }
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
