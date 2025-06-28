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
                  }
                  addr78:
                  if(§§pop())
                  {
                  }
               }
               §§pop();
               §§push(!hitBase);
            }
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
               var _loc2_:* = §§findproperty(deathFade);
               var _loc3_:* = _loc2_.deathFade + 1;
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
               §§goto(addr78);
               §§push(!attacking);
            }
            addr411:
            paintNumbers();
            §§goto(addr413);
         }
         if(§§pop())
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
                                    }
                                    addr375:
                                    if(§§pop())
                                    {
                                    }
                                 }
                                 addr378:
                                 §§push(x - stats.wdth - stats.rangeX > endSpot);
                              }
                              §§pop();
                              §§goto(addr378);
                           }
                           if(§§pop())
                           {
                              if(true)
                              {
                                 hitBase = true;
                                 if(true)
                                 {
                                 }
                                 addr370:
                                 hitBase = false;
                              }
                              addr373:
                              §§goto(addr375);
                              §§push(Boolean(side));
                           }
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
                                             }
                                             addr357:
                                             if(§§pop())
                                             {
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr350:
                                             loop5:
                                             while(true)
                                             {
                                                _loc1_ = §§pop();
                                                addr351:
                                                addr355:
                                                while(true)
                                                {
                                                   §§push(_loc1_);
                                                   continue loop5;
                                                }
                                                §§goto(addr357);
                                             }
                                          }
                                          addr349:
                                       }
                                       §§goto(addr378);
                                    }
                                    addr360:
                                    §§push(x + stats.wdth + stats.rangeX < endSpot);
                                 }
                                 §§pop();
                                 §§goto(addr360);
                              }
                              if(§§pop())
                              {
                                 if(true)
                                 {
                                    hitBase = true;
                                    if(true)
                                    {
                                    }
                                    §§goto(addr351);
                                 }
                                 §§goto(addr355);
                              }
                              if(hitBase)
                              {
                                 if(true)
                                 {
                                    setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,attackBase);
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,stats.extra.pierce ? attackAll : attack,true);
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
                           }
                           if(§§pop())
                           {
                              §§goto(addr370);
                           }
                           §§goto(addr373);
                        }
                        if(!§§pop())
                        {
                        }
                        addr391:
                        if(!hitBase)
                        {
                           setAnim(name,"walk",0,stats.wlkFps,0,false);
                           addr393:
                        }
                     }
                     hitBase = false;
                     §§goto(addr391);
                  }
                  else
                  {
                     if(enAr[_loc1_].dead)
                     {
                        if(true)
                        {
                        }
                        addr413:
                        return;
                     }
                     if(checkRange(enAr[_loc1_]))
                     {
                        if(true)
                        {
                           attacking = enAr[_loc1_];
                           if(true)
                           {
                              setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,stats.extra.pierce ? attackAll : attack,true);
                              if(true)
                              {
                              }
                              §§goto(addr393);
                           }
                        }
                        §§goto(addr411);
                     }
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
                           §§goto(addr391);
                        }
                        §§goto(addr378);
                     }
                  }
                  while(true)
                  {
                     if(§§pop() >= enAr.length)
                     {
                        §§goto(addr355);
                     }
                     else
                     {
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
                        §§push(!checkRange(attacking));
                     }
                     §§goto(addr315);
                  }
               }
               if(§§pop())
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
                           }
                        }
                        else
                        {
                           setAnim(name,"walk",0,stats.wlkFps,0,false);
                        }
                     }
                     else
                     {
                        addr305:
                        _loc1_ = 0;
                     }
                  }
                  §§goto(addr351);
               }
            }
            §§goto(addr322);
         }
         else if(hitBase)
         {
            §§goto(addr305);
         }
         paintAnimation();
         §§goto(addr411);
      }
   }
}

if(true)
{
   Unit_Attacker = §§newclass(Unit_Attacker,Unit);
}

