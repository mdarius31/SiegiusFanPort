
{
   if(true)
   {
      Unit_General = §§newclass(Unit_General,Unit);
   }
}

package
{
   public class Unit_General extends Unit
   {
       
      
      private var startSpot:Number;
      
      private var returnTimer:uint;
      
      public function Unit_General(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint = 1, param8:Object = null)
      {
         if(true)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8);
            if(true)
            {
               returnTimer = 15 * 30;
               if(true)
               {
                  if(extra.duration)
                  {
                     if(true)
                     {
                        returnTimer = extra.duration * 30;
                        if(true)
                        {
                           addr50:
                           startSpot = param3;
                           if(true)
                           {
                              if(side != 0)
                              {
                                 if(side == 1)
                                 {
                                    curHp = game.enemy.curHp;
                                    addr84:
                                    maxHp = game.enemy.maxHp;
                                    addr89:
                                    return;
                                    addr72:
                                 }
                              }
                              §§goto(addr89);
                           }
                           curHp = game.hud.curHp;
                        }
                        maxHp = game.hud.maxHp;
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr50);
               }
               §§goto(addr72);
            }
         }
         §§goto(addr84);
      }
      
      protected function attackAll() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < enAr.length)
            {
               if(!enAr[_loc1_].dead)
               {
                  if(checkRange(enAr[_loc1_]))
                  {
                     attack(enAr[_loc1_]);
                  }
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
      
      override public function damage(param1:Number, param2:uint = 0) : void
      {
         var _loc3_:* = NaN;
         var _loc4_:String = null;
         var _loc5_:String = null;
         §§push(1);
         if(true)
         {
            §§push(§§pop());
            if(true)
            {
               _loc3_ = §§pop();
               §§push(param2);
               if(true)
               {
                  §§push(§§pop() & UnitStats.C);
                  if(true)
                  {
                     if(§§pop())
                     {
                        §§push(stats.resC);
                        if(true)
                        {
                           _loc3_ = §§pop();
                           §§goto(addr61);
                        }
                        §§goto(addr77);
                     }
                     else
                     {
                        addr44:
                        if(param2 & UnitStats.L)
                        {
                           §§push(stats.resL);
                           if(true)
                           {
                              _loc3_ = §§pop();
                              addr61:
                              §§goto(addr62);
                           }
                           addr62:
                           if(_loc3_ == 1)
                           {
                              _loc4_ = "Norm";
                              if(SD.blood)
                              {
                                 _loc5_ = "blood" + SD.blood;
                              }
                           }
                           else
                           {
                              addr77:
                              if(_loc3_ < 1)
                              {
                                 _loc4_ = "Res";
                                 _loc5_ = "spark";
                              }
                              else
                              {
                                 addr85:
                                 if(_loc3_ > 1)
                                 {
                                    _loc4_ = "Weak";
                                    if(true)
                                    {
                                       if(SD.blood)
                                       {
                                          _loc5_ = "bloodBig" + SD.blood;
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc5_)
                           {
                              game.createEffect(x - (stats.wdth - Math.random() * 10) * mySide,y + 1,Math.random() * 20 - 10 + stats.hght * -0.5,true,_loc5_);
                              if(SD.blood == 2)
                              {
                                 game.createEffect(x - (stats.wdth - Math.random() * 10) * mySide,y + 1,Math.random() * 20 - 10 + stats.hght * -0.5,true,_loc5_);
                              }
                           }
                           param1 = Math.round(param1 * _loc3_);
                           if(!extra.noNum)
                           {
                              dmgNumbers.push(new DmgNumber(param1,_loc4_));
                           }
                           if(!extra.invincible)
                           {
                              if(side == 0)
                              {
                                 game.hud.damage(param1 * 3);
                                 curHp = game.hud.curHp;
                              }
                              else if(side == 1)
                              {
                                 game.enemy.damage(param1 * 3);
                                 curHp = game.enemy.curHp;
                              }
                           }
                           return;
                        }
                        addr53:
                        if(param2 & UnitStats.M)
                        {
                           _loc3_ = stats.resM;
                        }
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr44);
               }
               §§goto(addr53);
            }
            §§goto(addr85);
         }
         §§goto(addr53);
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         if(true)
         {
            if(remove)
            {
               if(true)
               {
                  return;
               }
               addr194:
               §§push(0);
            }
            else
            {
               §§push(Boolean(game.cmpPause));
               if(!Boolean(game.cmpPause))
               {
                  §§pop();
                  if(true)
                  {
                     addr32:
                     if(Boolean(game.pause))
                     {
                        if(true)
                        {
                           if(!didDeath)
                           {
                              if(true)
                              {
                                 paintAnimation();
                                 if(true)
                                 {
                                    addr48:
                                    paintNumbers();
                                    if(true)
                                    {
                                       return;
                                    }
                                    addr166:
                                    if(x > startSpot)
                                    {
                                       addr169:
                                       remove = true;
                                    }
                                 }
                                 addr172:
                              }
                              else
                              {
                                 addr178:
                                 if(!hitBase)
                                 {
                                    addr181:
                                    if(!side)
                                    {
                                       addr183:
                                       x += movMod;
                                    }
                                    else
                                    {
                                       x -= movMod;
                                    }
                                    §§goto(addr194);
                                 }
                                 else if(attacking)
                                 {
                                    if(Boolean(attacking.dead) || !checkRange(attacking))
                                    {
                                       attacking = null;
                                       if(hitBase)
                                       {
                                          setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,attackBase,true);
                                       }
                                       else
                                       {
                                          setAnim(name,"walk",0,stats.wlkFps,0,false);
                                       }
                                    }
                                 }
                                 else if(hitBase)
                                 {
                                    _loc1_ = 0;
                                    loop0:
                                    while(_loc1_ < enAr.length)
                                    {
                                       if(!enAr[_loc1_].dead)
                                       {
                                          if(checkRange(enAr[_loc1_]))
                                          {
                                             attacking = enAr[_loc1_];
                                             setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,!!stats.extra.pierce ? attackAll : attack,true);
                                          }
                                       }
                                       §§push(_loc1_ + 1);
                                       while(true)
                                       {
                                          _loc1_ = §§pop();
                                          continue loop0;
                                       }
                                    }
                                    if(!side && x + stats.wdth + stats.rangeX < endSpot)
                                    {
                                       hitBase = false;
                                    }
                                    if(Boolean(side) && x - stats.wdth - stats.rangeX > endSpot)
                                    {
                                       hitBase = false;
                                    }
                                 }
                              }
                              §§goto(addr444);
                           }
                           else
                           {
                              doFadeDeath();
                              if(true)
                              {
                                 §§goto(addr48);
                              }
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr181);
                     }
                     else
                     {
                        §§push(returnTimer);
                        if(true)
                        {
                           if(§§pop())
                           {
                              if(true)
                              {
                                 --returnTimer;
                                 if(true)
                                 {
                                    addr74:
                                    doDmgNumbers();
                                    if(true)
                                    {
                                       if(didDeath)
                                       {
                                          if(true)
                                          {
                                             ++deathFade;
                                             if(true)
                                             {
                                                doFadeDeath();
                                                if(false)
                                                {
                                                   addr132:
                                                   setAnim(stats.id + flip,"walk",0,stats.wlkFps,0,false);
                                                   addr144:
                                                }
                                                §§goto(addr444);
                                             }
                                             §§goto(addr144);
                                          }
                                          else
                                          {
                                             addr147:
                                             if(!side)
                                             {
                                                addr149:
                                                x -= movMod;
                                                addr154:
                                                if(x < startSpot)
                                                {
                                                   addr157:
                                                   remove = true;
                                                }
                                             }
                                             else
                                             {
                                                x += movMod;
                                                §§goto(addr166);
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                       else
                                       {
                                          if(dead)
                                          {
                                             if(true)
                                             {
                                                UnitFrame();
                                                if(true)
                                                {
                                                   paintAnimation();
                                                   if(false)
                                                   {
                                                      addr118:
                                                      setMoveSpeed();
                                                      addr120:
                                                      §§push(returnTimer);
                                                      if(true)
                                                      {
                                                         if(§§pop() == 1)
                                                         {
                                                            flip = !side ? "_flip" : "";
                                                            addr125:
                                                            §§goto(addr132);
                                                         }
                                                         else
                                                         {
                                                            addr146:
                                                            if(!returnTimer)
                                                            {
                                                               §§goto(addr147);
                                                            }
                                                            else
                                                            {
                                                               §§push(!attacking);
                                                               if(!attacking)
                                                               {
                                                                  §§pop();
                                                               }
                                                               §§goto(addr178);
                                                            }
                                                         }
                                                         §§goto(addr444);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr444);
                                                }
                                                §§goto(addr120);
                                             }
                                             §§goto(addr125);
                                          }
                                          else
                                          {
                                             UnitFrame();
                                             status.flaming = 0;
                                          }
                                          §§goto(addr118);
                                       }
                                       §§goto(addr147);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr74);
                        }
                        addr196:
                        _loc1_ = §§pop();
                        while(true)
                        {
                           if(_loc1_ < enAr.length)
                           {
                              continue;
                           }
                           if(!side && x + stats.wdth + stats.rangeX > endSpot)
                           {
                              hitBase = true;
                           }
                           §§push(Boolean(side));
                           if(Boolean(side))
                           {
                              §§pop();
                              §§push(x - stats.wdth);
                              if(true)
                              {
                                 §§push(§§pop() - stats.rangeX);
                                 if(true)
                                 {
                                    addr289:
                                    if(§§pop() < endSpot)
                                    {
                                       hitBase = true;
                                    }
                                    if(hitBase)
                                    {
                                       setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,attackBase,true);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr395);
                                 }
                                 addr444:
                                 paintAnimation();
                                 paintNumbers();
                                 return;
                              }
                              §§goto(addr428);
                           }
                           §§goto(addr289);
                        }
                        §§goto(addr428);
                     }
                  }
                  §§goto(addr183);
               }
               §§goto(addr32);
            }
         }
         §§goto(addr196);
      }
   }
}
