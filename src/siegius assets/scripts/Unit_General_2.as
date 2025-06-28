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
                        }
                        addr63:
                        maxHp = game.hud.maxHp;
                     }
                  }
                  startSpot = param3;
                  if(true)
                  {
                     if(side != 0)
                     {
                        if(side == 1)
                        {
                        }
                     }
                  }
                  curHp = game.hud.curHp;
                  §§goto(addr63);
               }
               curHp = game.enemy.curHp;
            }
            maxHp = game.enemy.maxHp;
         }
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
            _loc1_ = §§pop() + 1;
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
                     addr62:
                     if(§§pop())
                     {
                        §§push(stats.resC);
                        if(true)
                        {
                           _loc3_ = §§pop();
                        }
                        §§goto(addr77);
                     }
                     else
                     {
                        §§push(param2 & UnitStats.L);
                     }
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
                        if(§§pop() < 1)
                        {
                           _loc4_ = "Res";
                           _loc5_ = "spark";
                        }
                        else
                        {
                           §§push(_loc3_);
                        }
                        addr100:
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
                        §§push(_loc3_);
                     }
                     §§goto(addr100);
                  }
                  if(§§pop())
                  {
                     §§push(stats.resL);
                     if(true)
                     {
                        _loc3_ = §§pop();
                     }
                     §§goto(addr62);
                  }
                  else
                  {
                     §§push(param2);
                  }
                  §§goto(addr62);
               }
               §§push(§§pop() & UnitStats.M);
            }
            if(§§pop() > 1)
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
            §§goto(addr77);
         }
         if(§§pop())
         {
            _loc3_ = stats.resM;
         }
         §§goto(addr62);
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
                  addr183:
                  if(true)
                  {
                     §§push(Boolean(game.pause));
                  }
                  x += movMod;
                  §§goto(addr194);
               }
               if(§§pop())
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
                              }
                           }
                           addr172:
                        }
                        else
                        {
                           addr178:
                           if(hitBase)
                           {
                              if(attacking)
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
                                          setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,stats.extra.pierce ? attackAll : attack,true);
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
                        }
                        addr444:
                        paintAnimation();
                        §§goto(addr446);
                     }
                     else
                     {
                        doFadeDeath();
                        if(true)
                        {
                           §§goto(addr48);
                        }
                     }
                     remove = true;
                     §§goto(addr172);
                  }
                  if(!side)
                  {
                     §§goto(addr183);
                  }
                  else
                  {
                     x -= movMod;
                  }
                  §§goto(addr194);
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
                           }
                           addr154:
                           if(x < startSpot)
                           {
                           }
                           addr160:
                           §§goto(addr172);
                        }
                        remove = true;
                        §§goto(addr160);
                     }
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
                                 }
                                 addr446:
                                 paintNumbers();
                                 return;
                              }
                           }
                           §§goto(addr444);
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
                                    if(true)
                                    {
                                    }
                                    §§goto(addr444);
                                 }
                                 addr120:
                                 §§push(returnTimer);
                                 if(true)
                                 {
                                    if(§§pop() != 1)
                                    {
                                       §§push(returnTimer);
                                    }
                                    §§goto(addr444);
                                 }
                                 if(§§pop())
                                 {
                                    §§push(!attacking);
                                    if(!attacking)
                                    {
                                       §§pop();
                                    }
                                    §§goto(addr178);
                                 }
                                 §§goto(addr444);
                              }
                              flip = !side ? "_flip" : "";
                              §§goto(addr132);
                           }
                           else
                           {
                              UnitFrame();
                              status.flaming = 0;
                           }
                           setMoveSpeed();
                           §§goto(addr120);
                        }
                        §§goto(addr172);
                     }
                     x -= movMod;
                     §§goto(addr154);
                  }
               }
            }
            _loc1_ = §§pop();
         }
         while(true)
         {
            if(_loc1_ < enAr.length)
            {
               if(!enAr[_loc1_].dead)
               {
                  if(checkRange(enAr[_loc1_]))
                  {
                     attacking = enAr[_loc1_];
                     setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,stats.extra.pierce ? attackAll : attack,true);
                  }
               }
               §§push(_loc1_ + 1);
               if(false)
               {
                  break;
               }
               _loc1_ = §§pop();
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
                     §§push(§§pop() < endSpot);
                  }
                  else
                  {
                     §§goto(addr395);
                  }
                  §§goto(addr444);
               }
               §§goto(addr428);
            }
            if(§§pop())
            {
               hitBase = true;
            }
            if(hitBase)
            {
               setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,attackBase,true);
            }
            §§goto(addr444);
         }
         §§goto(addr428);
      }
   }
}

if(true)
{
   Unit_General = §§newclass(Unit_General,Unit);
}

