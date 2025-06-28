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
                     }
                     addr96:
                     returning = true;
                  }
                  setAnim(stats.id + getFlip(),"walk",0,stats.wlkFps,0,false);
               }
               §§push(uint(Math.round(mineBox.value * (upgrade.id == "mine" ? upgrade["upMod" + upNum] : 1))));
               if(true)
               {
                  _loc2_ = §§pop();
                  addr93:
                  if(true)
                  {
                     goldHold += _loc2_;
                     if(true)
                     {
                        ++mineTimes;
                        dmgNumbers.push(new DmgNumber(_loc2_,"Gold"));
                     }
                     §§push(mineTimes);
                  }
                  mining = false;
                  §§goto(addr96);
               }
               if(§§pop() == 5)
               {
                  §§goto(addr93);
               }
            }
            game.createEffect(x + 50 * enSide,y + 1,0,true,"spark");
         }
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
                        addr147:
                        §§push(!side);
                        §§push(!side);
                        if(true)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              §§push(x > mineBox.ox - 50);
                           }
                           §§push(§§pop() || side && x < mineBox.ox + 50);
                        }
                        if(§§pop())
                        {
                           §§pop();
                           §§push(!side);
                           §§push(!side);
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
                     }
                     if(§§pop())
                     {
                        setAnim(name,"attack",5,stats.atkFps,stats.cdFps,false,doMine,true);
                        mining = true;
                     }
                     else
                     {
                        §§goto(addr147);
                        §§push(returning);
                        §§push(returning);
                     }
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§push(x < spawnX);
                  }
                  §§push(§§pop());
                  §§push(§§pop());
               }
               paintAnimation();
            }
            paintNumbers();
            return;
         }
         if(!§§pop())
         {
            §§pop();
            §§push(side && x > spawnX);
         }
         §§goto(addr147);
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
                        addr52:
                     }
                     addr49:
                     if(!returning)
                     {
                        §§push("_flip");
                     }
                  }
                  else
                  {
                     §§push("_flip");
                     if(true)
                     {
                        §§goto(addr36);
                     }
                  }
                  _loc1_ = §§pop();
               }
               §§goto(addr52);
               §§push("");
            }
            if(side)
            {
               §§goto(addr49);
            }
         }
         addr36:
         §§push(§§pop());
         if(true)
         {
            _loc1_ = §§pop();
         }
         _loc1_;
         return §§pop();
      }
   }
}

