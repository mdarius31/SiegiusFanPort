package
{
   public class Unit_Miner extends Unit
   {
       
      
      private var spawnX:Number;
      
      private var mining:Boolean;
      
      private var goldHold:uint;
      
      private var mineBox:Object;
      
      private var returning:Boolean;
      
      private var mineTimes:uint;
      
      public function Unit_Miner(param1:*, param2:uint, param3:Number, param4:Number, param5:String, param6:String, param7:uint = 1, param8:Object = null)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8);
         mineBox = extra.mineBox;
         mineBox.used = true;
         goldHold = 0;
         mineTimes = 0;
         spawnX = x;
      }
      
      override public function die() : void
      {
         if(dead)
         {
            return;
         }
         dead = true;
         mineBox.used = false;
         setDeathAni();
      }
      
      protected function doMine() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = 0;
         if(true)
         {
            _loc1_ = Number(game.isOnScreen(x));
            if(true)
            {
               if(_loc1_)
               {
                  if(true)
                  {
                     SH.playUnitSound(stats.sound,_loc1_);
                     if(true)
                     {
                        addr34:
                        §§push(uint(Math.round(mineBox.value * (upgrade.id == "mine" ? upgrade["upMod" + upNum] : 1))));
                        if(true)
                        {
                           _loc2_ = §§pop();
                           if(true)
                           {
                              goldHold += _loc2_;
                              if(true)
                              {
                                 ++mineTimes;
                                 dmgNumbers.push(new DmgNumber(_loc2_,"Gold"));
                              }
                              addr91:
                              if(mineTimes == 5)
                              {
                              }
                              game.createEffect(x + 50 * enSide,y + 1,0,true,"spark");
                              return;
                              addr112:
                           }
                           mining = false;
                           addr96:
                           returning = true;
                           setAnim(stats.id + getFlip(),"walk",0,stats.wlkFps,0,false);
                           §§goto(addr112);
                        }
                        §§goto(addr91);
                     }
                  }
                  §§goto(addr96);
               }
               §§goto(addr34);
            }
         }
         §§goto(addr91);
      }
      
      public function EnterFrame() : void
      {
         if(remove)
         {
            return;
         }
         §§push(Boolean(game.cmpPause));
         §§push(Boolean(game.cmpPause));
         if(true)
         {
            if(!§§pop())
            {
               §§pop();
               §§push(Boolean(game.pause));
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
               ++deathFade;
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
               if(!mining)
               {
                  setMoveSpeed(returning ? -1 : 1);
                  x += movMod * enSide;
                  §§push(!returning);
                  §§push(!returning);
                  if(true)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(!side);
                        §§push(!side);
                        if(true)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(x > mineBox.ox - 50);
                           }
                           §§push(§§pop());
                           if(!§§pop())
                           {
                              §§pop();
                              §§goto(addr127);
                           }
                           addr127:
                           if(side && x < mineBox.ox + 50)
                           {
                              setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,doMine,true);
                              mining = true;
                              §§goto(addr230);
                           }
                           else
                           {
                              §§push(returning);
                              §§push(returning);
                           }
                           §§goto(addr230);
                        }
                        if(§§pop())
                        {
                           §§pop();
                           addr152:
                           §§push(!side && x < spawnX || side && x > spawnX);
                        }
                        if(§§pop())
                        {
                           returning = false;
                           if(!side)
                           {
                              game.hud.gold += goldHold;
                              game.hud.goldEarned += goldHold;
                           }
                           else
                           {
                              game.enemy.gold += goldHold;
                           }
                           goldHold = 0;
                           mineTimes = 0;
                           setAnim(stats.id + getFlip(),"walk",0,stats.wlkFps,0,false);
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr152);
               }
               §§goto(addr230);
            }
            addr230:
            paintAnimation();
            paintNumbers();
            return;
         }
         §§goto(addr152);
      }
      
      private function getFlip() : String
      {
         var _loc1_:* = null;
         if(true)
         {
            if(!side)
            {
               if(true)
               {
                  if(!returning)
                  {
                     if(true)
                     {
                        §§push("");
                        if(true)
                        {
                           §§goto(addr36);
                        }
                        §§goto(addr52);
                     }
                     §§goto(addr49);
                  }
                  else
                  {
                     §§push("_flip");
                     if(true)
                     {
                        addr36:
                        §§push(§§pop());
                        if(true)
                        {
                           _loc1_ = §§pop();
                           addr40:
                           if(side)
                           {
                              addr49:
                              if(returning)
                              {
                                 addr54:
                                 _loc1_ = "";
                                 §§push(_loc1_);
                                 addr52:
                                 addr51:
                              }
                              else
                              {
                                 §§goto(addr54);
                                 §§push("_flip");
                              }
                           }
                           §§goto(addr54);
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr54);
               }
               §§goto(addr51);
            }
            §§goto(addr40);
         }
         §§goto(addr54);
      }
   }
}
