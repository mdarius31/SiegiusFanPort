
{
   if(true)
   {
      Unit_Attacker = §§newclass(Unit_Attacker,Unit);
   }
}

package
{
   public class Unit_Attacker extends Unit
   {
       
      
      public function Unit_Attacker(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint = 1, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      protected function attackAll() : void
      {
         var _loc1_:uint = 0;
         _loc1_ = 0;
         while(_loc1_ < enAr.length)
         {
            if(!enAr[_loc1_].dead)
            {
               if(checkRange(enAr[_loc1_]))
               {
                  attack(enAr[_loc1_]);
               }
            }
            _loc1_++;
         }
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:* = 0;
         if(remove)
         {
            return;
         }
         §§push(Boolean(game.cmpPause));
         if(true)
         {
            if(!§§pop())
            {
               if(true)
               {
                  §§pop();
                  §§push(Boolean(game.pause));
                  if(true)
                  {
                     addr30:
                     if(§§pop())
                     {
                        if(!didDeath)
                        {
                           paintAnimation();
                        }
                        else
                        {
                           doFadeDeath();
                        }
                        paintNumbers();
                        return;
                     }
                     doDmgNumbers();
                     if(didDeath)
                     {
                        var _loc2_:*;
                        var _loc3_:* = (_loc2_ = §§findproperty(deathFade)).deathFade + 1;
                        if(true)
                        {
                           _loc2_.deathFade = _loc3_;
                        }
                        doFadeDeath();
                     }
                     else if(dead)
                     {
                        UnitFrame();
                        paintAnimation();
                     }
                     else
                     {
                        UnitFrame();
                        doStatusEffects();
                        status.EnterFrame();
                        setMoveSpeed();
                        addr78:
                        §§push(!attacking);
                        if(!attacking)
                        {
                           addr80:
                           §§pop();
                           addr83:
                           if(!hitBase)
                           {
                              x += movMod * enSide;
                              _loc1_ = 0;
                              loop4:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(true)
                                 {
                                    if(§§pop() >= enAr.length)
                                    {
                                       if(true)
                                       {
                                          §§push(!side);
                                          if(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(true)
                                                {
                                                   §§pop();
                                                   if(true)
                                                   {
                                                      §§push(x + stats.wdth + stats.rangeX > endSpot);
                                                      if(true)
                                                      {
                                                         addr183:
                                                         if(§§pop())
                                                         {
                                                            if(true)
                                                            {
                                                               hitBase = true;
                                                               if(true)
                                                               {
                                                                  addr191:
                                                                  §§push(Boolean(side));
                                                                  if(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           §§pop();
                                                                           if(true)
                                                                           {
                                                                              §§push(x - stats.wdth);
                                                                              if(true)
                                                                              {
                                                                                 §§push(§§pop() - stats.rangeX);
                                                                                 if(true)
                                                                                 {
                                                                                    §§push(§§pop() < endSpot);
                                                                                    if(true)
                                                                                    {
                                                                                       addr224:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(true)
                                                                                          {
                                                                                             hitBase = true;
                                                                                             if(true)
                                                                                             {
                                                                                                addr232:
                                                                                                if(hitBase)
                                                                                                {
                                                                                                   if(true)
                                                                                                   {
                                                                                                      setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,attackBase);
                                                                                                      if(true)
                                                                                                      {
                                                                                                         addr409:
                                                                                                         paintAnimation();
                                                                                                         addr411:
                                                                                                         paintNumbers();
                                                                                                         return;
                                                                                                         addr249:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,!!stats.extra.pierce ? attackAll : attack,true);
                                                                                                         }
                                                                                                         addr327:
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc1_);
                                                                                                      break loop4;
                                                                                                   }
                                                                                                   addr347:
                                                                                                }
                                                                                                §§goto(addr249);
                                                                                             }
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                addr352:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop() >= enAr.length)
                                                                                                   {
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   if(enAr[_loc1_].dead)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr315:
                                                                                                   }
                                                                                                   else if(checkRange(enAr[_loc1_]))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         attacking = enAr[_loc1_];
                                                                                                         §§goto(addr327);
                                                                                                      }
                                                                                                      addr322:
                                                                                                   }
                                                                                                   §§goto(addr347);
                                                                                                }
                                                                                                addr350:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc1_ = §§pop();
                                                                                                   continue loop0;
                                                                                                }
                                                                                             }
                                                                                             addr351:
                                                                                          }
                                                                                          addr357:
                                                                                          §§push(!side);
                                                                                          if(!side)
                                                                                          {
                                                                                             addr359:
                                                                                             §§pop();
                                                                                             addr369:
                                                                                             if(x + stats.wdth + stats.rangeX < endSpot)
                                                                                             {
                                                                                                addr370:
                                                                                                hitBase = false;
                                                                                                addr373:
                                                                                                §§push(Boolean(side));
                                                                                                if(Boolean(side))
                                                                                                {
                                                                                                   addr377:
                                                                                                   §§pop();
                                                                                                   addr387:
                                                                                                   addr382:
                                                                                                   addr378:
                                                                                                   addr385:
                                                                                                   if(x - stats.wdth - stats.rangeX > endSpot)
                                                                                                   {
                                                                                                      addr388:
                                                                                                      hitBase = false;
                                                                                                   }
                                                                                                   if(!hitBase)
                                                                                                   {
                                                                                                      setAnim(name,"walk",0,stats.wlkFps,0,false);
                                                                                                      addr393:
                                                                                                   }
                                                                                                   §§goto(addr409);
                                                                                                }
                                                                                                §§goto(addr387);
                                                                                             }
                                                                                             §§goto(addr373);
                                                                                          }
                                                                                          §§goto(addr369);
                                                                                       }
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    §§goto(addr357);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 addr349:
                                                                              }
                                                                              §§goto(addr382);
                                                                           }
                                                                           §§goto(addr369);
                                                                        }
                                                                        §§goto(addr359);
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                            }
                                                            §§goto(addr370);
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr370);
                                                   }
                                                   §§goto(addr378);
                                                }
                                                §§goto(addr377);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr377);
                                       }
                                       §§goto(addr388);
                                    }
                                    else
                                    {
                                       if(enAr[_loc1_].dead)
                                       {
                                          if(true)
                                          {
                                             addr141:
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
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr350);
                                                   }
                                                   §§goto(addr377);
                                                }
                                                §§goto(addr385);
                                             }
                                             §§goto(addr352);
                                          }
                                          §§goto(addr409);
                                       }
                                       else if(checkRange(enAr[_loc1_]))
                                       {
                                          if(true)
                                          {
                                             attacking = enAr[_loc1_];
                                             if(true)
                                             {
                                                setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,!!stats.extra.pierce ? attackAll : attack,true);
                                                if(true)
                                                {
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr393);
                                             }
                                             §§goto(addr409);
                                          }
                                          §§goto(addr411);
                                       }
                                       §§goto(addr141);
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§goto(addr349);
                              }
                           }
                           else if(attacking)
                           {
                              if(true)
                              {
                                 §§push(Boolean(attacking.dead));
                                 if(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(true)
                                       {
                                          addr268:
                                          if(!checkRange(attacking))
                                          {
                                             if(true)
                                             {
                                                attacking = null;
                                                if(true)
                                                {
                                                   if(hitBase)
                                                   {
                                                      if(true)
                                                      {
                                                         setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,attackBase,true);
                                                         addr302:
                                                         §§goto(addr409);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      setAnim(name,"walk",0,stats.wlkFps,0,false);
                                                   }
                                                   §§goto(addr302);
                                                }
                                                else
                                                {
                                                   addr305:
                                                   _loc1_ = 0;
                                                }
                                                §§goto(addr409);
                                             }
                                             §§goto(addr351);
                                          }
                                          §§goto(addr302);
                                       }
                                       §§goto(addr315);
                                    }
                                 }
                                 §§goto(addr268);
                              }
                              §§goto(addr322);
                           }
                           else if(hitBase)
                           {
                              §§goto(addr305);
                           }
                           §§goto(addr409);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr409);
                  }
                  §§goto(addr78);
               }
               §§goto(addr80);
            }
            §§goto(addr30);
         }
         §§goto(addr80);
      }
   }
}
