package
{
   public class Unit_Effecter extends Unit
   {
      
      public function Unit_Effecter(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint = 1, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
      }
      
      public function EnterFrame() : void
      {
         var _loc1_:uint = 0;
         if(true)
         {
            if(remove)
            {
               if(true)
               {
                  return;
               }
               addr115:
               _loc1_ = 0;
            }
            else
            {
               §§push(Boolean(game.cmpPause));
               if(true)
               {
                  §§push(§§pop());
                  if(true)
                  {
                     if(!§§pop())
                     {
                        addr104:
                        if(true)
                        {
                           §§pop();
                           addr105:
                           if(true)
                           {
                              §§push(Boolean(game.pause));
                              if(true)
                              {
                              }
                              addr102:
                              §§push(§§pop());
                           }
                           §§push(!hitBase);
                        }
                        §§pop();
                        §§goto(addr105);
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
                                 if(false)
                                 {
                                    addr96:
                                    status.EnterFrame();
                                 }
                                 §§goto(addr335);
                              }
                              setMoveSpeed();
                           }
                           else
                           {
                              doFadeDeath();
                              if(false)
                              {
                                 addr94:
                                 doStatusEffects();
                                 §§goto(addr96);
                              }
                              §§goto(addr335);
                           }
                           paintNumbers();
                           if(true)
                           {
                              return;
                           }
                        }
                        §§goto(addr102);
                        §§push(!attacking);
                     }
                     else
                     {
                        doDmgNumbers();
                        if(true)
                        {
                           if(didDeath)
                           {
                              if(true)
                              {
                                 ++deathFade;
                                 doFadeDeath();
                              }
                           }
                           else if(!dead)
                           {
                              UnitFrame();
                              §§goto(addr94);
                           }
                           §§goto(addr335);
                        }
                        UnitFrame();
                        paintAnimation();
                     }
                     §§goto(addr335);
                  }
                  if(§§pop())
                  {
                     §§goto(addr104);
                  }
               }
               if(§§pop())
               {
                  x += movMod * enSide;
                  §§goto(addr115);
               }
               else if(attacking)
               {
                  if(true)
                  {
                     addr254:
                     addr261:
                     if(Boolean(attacking.dead) || !checkRange(attacking))
                     {
                     }
                     addr285:
                  }
                  attacking = null;
                  addr265:
                  if(hitBase)
                  {
                     addr267:
                     setAnim(name,"stand",0,stats.wlkFps,0);
                     addr275:
                  }
                  else
                  {
                     setAnim(name,"walk",0,stats.wlkFps,0,false);
                  }
                  §§goto(addr285);
               }
               else if(hitBase)
               {
                  addr288:
                  _loc1_ = 0;
                  addr291:
                  loop0:
                  while(_loc1_ < enAr.length)
                  {
                     if(enAr[_loc1_].dead)
                     {
                        while(true)
                        {
                        }
                        addr298:
                     }
                     else if(checkRange(enAr[_loc1_]))
                     {
                        while(true)
                        {
                           attacking = enAr[_loc1_];
                           addr310:
                           while(true)
                           {
                              setAnim(name,"stand",0,stats.wlkFps,0);
                           }
                        }
                        addr305:
                     }
                     while(true)
                     {
                        §§push(_loc1_ + 1);
                        addr320:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           continue loop0;
                        }
                     }
                  }
                  addr329:
               }
            }
            addr333:
            paintAnimation();
            §§goto(addr335);
         }
         while(true)
         {
            if(_loc1_ < enAr.length)
            {
               if(enAr[_loc1_].dead)
               {
                  if(true)
                  {
                  }
                  §§goto(addr335);
               }
               else if(checkRange(enAr[_loc1_]))
               {
                  if(true)
                  {
                     attacking = enAr[_loc1_];
                     if(true)
                     {
                        setAnim(name,"stand",0,stats.wlkFps,0);
                        if(true)
                        {
                        }
                        §§goto(addr329);
                     }
                     §§goto(addr333);
                  }
                  addr335:
                  paintNumbers();
                  return;
               }
               §§push(_loc1_ + 1);
               if(true)
               {
                  _loc1_ = §§pop();
                  if(true)
                  {
                     continue;
                  }
               }
               break;
            }
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
                           if(false)
                           {
                           }
                           §§goto(addr254);
                        }
                        §§goto(addr305);
                     }
                     §§goto(addr256);
                  }
                  if(§§pop())
                  {
                     if(true)
                     {
                        hitBase = true;
                        if(true)
                        {
                        }
                        §§goto(addr291);
                     }
                     §§goto(addr298);
                  }
                  §§push(Boolean(side));
                  if(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        if(true)
                        {
                           §§push(x - stats.wdth);
                           if(true)
                           {
                              §§push(§§pop() - stats.rangeX);
                           }
                           §§push(§§pop() < endSpot);
                        }
                        else
                        {
                           §§goto(addr288);
                        }
                        §§goto(addr333);
                     }
                  }
                  if(§§pop())
                  {
                     if(true)
                     {
                        hitBase = true;
                        if(true)
                        {
                        }
                        §§goto(addr275);
                     }
                     §§goto(addr254);
                  }
                  if(hitBase)
                  {
                     if(true)
                     {
                        setAnim(name,"stand",0,stats.wlkFps,0);
                        if(false)
                        {
                           §§goto(addr265);
                        }
                        §§goto(addr333);
                     }
                     §§goto(addr267);
                  }
                  §§goto(addr333);
               }
               §§goto(addr261);
            }
            §§goto(addr310);
            §§goto(addr318);
         }
         §§goto(addr320);
      }
   }
}

if(true)
{
   Unit_Effecter = §§newclass(Unit_Effecter,Unit);
}

